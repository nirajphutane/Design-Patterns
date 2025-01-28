
import 'Notepad.dart';
import 'ICommand.dart';

class Write implements ICommand {

  final Notepad _notepad;
  final String line;
  const Write(this._notepad, this.line);

  @override
  void execute() => _notepad.write(line);
}

class Read implements ICommand {

  final Notepad _notepad;
  const Read(this._notepad);

  @override
  void execute() => _notepad.read();
}

class Undo implements ICommand {

  final Notepad _notepad;
  const Undo(this._notepad);

  @override
  void execute() => _notepad.undo();
}

class Redo implements ICommand {

  final Notepad _notepad;
  const Redo(this._notepad);

  @override
  void execute() => _notepad.redo();
}