
import 'Computers.dart';
import 'IComputer.dart';

class ComputerFactory {

  static IComputer getComputer(Computers computer, String model) {
    switch(computer) {
      case Computers.pc: {
        return PC(model);
      }
      case Computers.laptop: {
        return Laptop(model);
      }
    }
  }
}