
import 'Commands.dart';
import 'Invoker.dart';
import 'Notepad.dart';

class Facade {
  final Notepad _notepad = Notepad();
  final Invoker _invoker = Invoker();

  void write(final String line) => _invoker.add(Write(_notepad, line));

  void undo() => _invoker.add(Undo(_notepad));

  void redo() => _invoker.add(Redo(_notepad));

  void read() => _invoker.add(Read(_notepad));

  void execute() => _invoker.execute();
}