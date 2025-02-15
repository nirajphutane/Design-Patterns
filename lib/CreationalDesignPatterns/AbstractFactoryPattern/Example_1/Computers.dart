
import 'IComputer.dart';

enum Computers {
  pc,
  laptop
}

class PC implements IComputer {

  @override
  final String os;

  const PC(this.os);

  @override
  void run() => print('On this PC $os OS is running...');
}

class Laptop implements IComputer {

  @override
  final String os;

  const Laptop(this.os);

  @override
  void run() => print('On this Laptop $os OS is running...');
}