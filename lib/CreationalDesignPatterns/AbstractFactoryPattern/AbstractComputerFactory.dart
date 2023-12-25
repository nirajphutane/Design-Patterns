
import 'IComputer.dart';

abstract interface class AbstractComputerFactory {

  final String os;

  AbstractComputerFactory(this.os);

  IComputer createComputer();
}