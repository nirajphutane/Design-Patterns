
import 'ComputerFactories.dart';
import 'IComputer.dart';
import 'Computers.dart';

class ComputerFactory {

  static IComputer getComputer(Computers computer, String os) {
    switch(computer) {
      case Computers.pc: {
        return PCFactory(os).createComputer();
      }
      case Computers.laptop: {
        return LaptopFactory(os).createComputer();
      }
    }
  }
}

// class ComputerFactory {
//
//   static String latestOS = 'macOS 14: Sonoma';  // Consider this value is coming from API.
//
//   static IComputer getComputer(Computers computer) {
//     switch(computer) {
//       case Computers.pc: {
//         return PCFactory(latestOS).createComputer();
//       }
//       case Computers.laptop: {
//         return LaptopFactory(latestOS).createComputer();
//       }
//     }
//   }
// }