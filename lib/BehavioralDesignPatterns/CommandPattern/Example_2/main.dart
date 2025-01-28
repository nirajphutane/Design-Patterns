
import 'Facade.dart';

void main(final List<String> args) {
  Facade()
    ..write('Good morning') // Good morning
    ..write('Niraj')  // Good morning \nNiraj
    ..undo()  // Good morning
    ..redo()  // Good morning \nNiraj
    ..undo()  // Good morning
    ..write('Gauri')    // Good morning \nGauri
    ..read()  // Good morning \nGauri
    ..execute();
}
