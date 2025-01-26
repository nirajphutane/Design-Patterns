
import 'Location.dart';

abstract interface class IPassenger {

  final String name;
  late String address;
  late Location location;

  IPassenger(this.name);

  void acknowledge(final String status);
}