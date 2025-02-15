
import 'IComputer.dart';

abstract interface class AbstractComputerFactory {

  final String os;

  const AbstractComputerFactory(this.os);

  IComputer createComputer();
}