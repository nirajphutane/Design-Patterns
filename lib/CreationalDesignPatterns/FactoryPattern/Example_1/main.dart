
import 'ComputerFactory.dart';
import 'Computers.dart';
import 'IComputer.dart';

void main(final List<String> args) {
  final IComputer pc = ComputerFactory.getComputer(Computers.pc, 'Windows 11');
  pc.run();

  ComputerFactory.getComputer(Computers.laptop, 'macOS 14: Sonoma').run();
}