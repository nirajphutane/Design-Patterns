
import 'Display.dart';

abstract interface class ISQLDatabase {

  void save();
}

class SQLDatabase implements ISQLDatabase {
  final String city;
  final double latitude, longitude, tempInCelsius, vaporPressure, relativeHumidity;

  const SQLDatabase(this.city, this.latitude, this.longitude, this.tempInCelsius, this.vaporPressure, this.relativeHumidity);

  @override
  void save() => print(toString());

  @override
  String toString() => "SQL Weather Data:\n"
      "${formatTable({
    'City': city,
    'Latitude': latitude,
    'Longitude': longitude,
    'Temp (Celsius)': '$tempInCelsius°C',
    'Vapor Pressure (hPa)': vaporPressure,
    'Relative Humidity (%)': relativeHumidity
  })}";
}