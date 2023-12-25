
import 'ComputerFactory.dart';
import 'Computers.dart';
import 'IComputer.dart';

void main(List<String> args) {
  IComputer pc = ComputerFactory.getComputer(Computers.pc, 'Windows 11');
  pc.run();

  IComputer laptop = ComputerFactory.getComputer(Computers.laptop, 'macOS 14: Sonoma');
  laptop.run();

  // IComputer computer = ComputerFactory.getComputer(Computers.pc);
  // computer.run();
  // computer = ComputerFactory.getComputer(Computers.laptop);
  // computer.run();
}