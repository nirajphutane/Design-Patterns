
import 'Memento.dart';
import 'CareTaker.dart';
import 'Originator.dart';

class Notepad {

  final Originator _originator = Originator();
  final CareTaker _careTaker = CareTaker();

  final List<String> _lines = [];

  void write(final String line) {
    _lines.add(line);
    _careTaker.clear(_originator);
    display();
  }

  void undo() {
    _originator.save = Memento(_lines.removeLast());
    _careTaker.save = _originator.memento;
    display();
  }

  void redo() {
    _careTaker.retrieve(_originator);
    final String? line = _originator.memento.line;
    if (line != null) {
      _lines.add(line);
      display();
    }
  }

  void display() => print('\n"${_lines.join('\n')}"');
}