
import 'Location.dart';
import 'ICab.dart';

class Cab1 implements ICab {

  @override
  final String capNumber;

  bool _isBooked = false;

  final Location _location;

  Cab1(this.capNumber, this._location, this._isBooked);

  @override
  Location get location => _location;

  @override
  bool get isBooked => _isBooked;

  @override
  void assign(final String status) {
    _isBooked = true;
    print('Cab-1: $status');
  }
}

class Cab2 implements ICab {

  @override
  final String capNumber;

  bool _isBooked = false;

  final Location _location;

  Cab2(this.capNumber, this._location, this._isBooked);

  @override
  Location get location => _location;

  @override
  bool get isBooked => _isBooked;

  @override
  void assign(final String status) {
    _isBooked = true;
    print('Cab-2: $status');
  }
}

class Cab3 implements ICab {

  @override
  final String capNumber;

  bool _isBooked = false;

  final Location _location;

  Cab3(this.capNumber, this._location, this._isBooked);

  @override
  Location get location => _location;

  @override
  bool get isBooked => _isBooked;

  @override
  void assign(final String status) {
    _isBooked = true;
    print('Cab-3: $status');
  }
}