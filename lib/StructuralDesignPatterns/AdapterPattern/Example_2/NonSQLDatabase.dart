
import 'Display.dart';

abstract interface class INonSQLDatabase {

  void store();
}

class NonSQLDatabase implements INonSQLDatabase {
  final String city;
  final double latitude, longitude, tempInCelsius, tempInFahrenheit, vaporPressure, relativeHumidity, absoluteHumidity;

  const NonSQLDatabase(this.city, this.latitude, this.longitude, this.tempInCelsius, this.tempInFahrenheit, this.vaporPressure, this.relativeHumidity, this.absoluteHumidity);

  @override
  void store() => print(toString());

  @override
  String toString() => "NonSQL Weather Data:\n"
      "${formatTable({
    'City': city,
    'Latitude': latitude,
    'Longitude': longitude,
    'Temp (Celsius)': '$tempInCelsius°C',
    'Temp (Fahrenheit)': '$tempInFahrenheit°F',
    'Vapor Pressure (hPa)': vaporPressure,
    'Relative Humidity (%)': relativeHumidity,
    'Absolute Humidity (g/m³)': absoluteHumidity
  })}";
}

