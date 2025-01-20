
import 'dart:math';
import 'NonSQLDatabase.dart';
import 'SQLDatabase.dart';

class WeatherDatabaseAdapter implements INonSQLDatabase {

  final ISQLDatabase _sql;
  const WeatherDatabaseAdapter(this._sql);

  @override
  void store() {
    if (_sql is SQLDatabase) {
      NonSQLDatabase(
        _sql.city,
        _sql.latitude,
        _sql.longitude,
        _sql.tempInCelsius,
        _toFahrenheit(_sql.tempInCelsius),
        _sql.vaporPressure,
        _sql.relativeHumidity,
        _toFahrenheit(_toAbsoluteHumidity(_sql.tempInCelsius, _sql.relativeHumidity))
      ).store();
    } else {
      throw 'Invalid SQLDatabase implementation found!';
    }
  }
}

double _toFahrenheit(final double celsius) => (celsius * 9 / 5) + 32;

double _toAbsoluteHumidity(final double tempInCelsius, final double relativeHumidity) =>
    ((relativeHumidity / 100) * 6.11 * pow(10, (7.5 * tempInCelsius) / (tempInCelsius + 237.3)) * 216.7) / (tempInCelsius + 273.15);