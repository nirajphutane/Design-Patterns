
import 'ComputerFactory.dart';
import 'Computers.dart';
import 'IComputer.dart';

void main(final List<String> args) {
  final IComputer pc = const ComputerFactory().getComputer(Computers.pc, 'Windows 11');
  pc.run();
  const ComputerFactory().getComputer(Computers.laptop, 'macOS 14: Sonoma').run();

  // final IComputer computer = const ComputerFactory.getComputer(Computers.pc);
  // computer.run();
  // ComputerFactory.getComputer(Computers.laptop).run();
}