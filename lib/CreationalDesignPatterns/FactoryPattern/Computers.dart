
import 'IComputer.dart';

enum Computers {
  pc,
  laptop
}

class PC implements IComputer {

  @override
  final String os;

  PC(this.os);

  @override
  void run() {
    print('PC: $os OS is running...');
  }
}

class Laptop implements IComputer {

  @override
  final String os;

  Laptop(this.os);

  @override
  void run() {
    print('Laptop: $os OS is running...');
  }
}