
import 'dart:math';

class Location {

  final double latitude, longitude;

  const Location(this.latitude, this. longitude);
}

extension Distance on Location {
  bool inRadius(Location location, radius) {
    final double x = longitude - location.longitude;
    final double y = latitude - location.latitude;
    final double distance = sqrt(pow(x, 2) + pow(y, 2));
    return distance <= radius;
  }
}