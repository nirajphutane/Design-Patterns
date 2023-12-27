
import 'Location.dart';

abstract interface class ICab {

  final String capNumber;
  late Location _location;
  late bool _isBooked;

  ICab(this.capNumber);

  Location get location => _location;

  bool get isBooked => _isBooked;

  void assign(String status);
}