
import 'IComputer.dart';
import 'AbstractComputerFactory.dart';
import 'Computers.dart';

class PCFactory implements AbstractComputerFactory {

  @override
  final String os;

  PCFactory(this.os);

  @override
  IComputer createComputer() => PC(os);
}

class LaptopFactory implements AbstractComputerFactory {

  @override
  final String os;

  LaptopFactory(this.os);

  @override
  IComputer createComputer() => Laptop(os);
}