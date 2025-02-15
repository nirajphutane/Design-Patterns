
import 'ComputerFactories.dart';
import 'IComputer.dart';
import 'Computers.dart';

class ComputerFactory {

  const ComputerFactory();

  IComputer getComputer(final Computers computer, final String os) {
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
//   const ComputerFactory();
//
//   static String latestOS = 'macOS 14: Sonoma';  // Consider this value is coming from API.
//
//   IComputer getComputer(final Computers computer) {
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