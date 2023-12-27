
import 'Location.dart';
import 'IPassenger.dart';

class Passenger1 implements IPassenger {

  @override
  final String name;

  @override
  String address;

  @override
  Location location;

  Passenger1(this.name, this.address, this.location);

  @override
  void acknowledge(String status) => print('Passenger-1: $status');
}

class Passenger2 implements IPassenger {

  @override
  final String name;

  @override
  String address;

  @override
  Location location;

  Passenger2(this.name, this.address, this.location);

  @override
  void acknowledge(String status) => print('Passenger-2: $status');
}

class Passenger3 implements IPassenger {

  @override
  final String name;

  @override
  String address;

  @override
  Location location;

  Passenger3(this.name, this.address, this.location);

  @override
  void acknowledge(String status) => print('Passenger-3: $status');
}