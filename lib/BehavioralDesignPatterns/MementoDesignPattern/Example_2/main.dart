
import 'Notepad.dart';

void main(final List<String> args) {

  final Notepad notepad = Notepad();
  notepad.write('Good morning');
  notepad.write('Niraj');
  notepad.undo();
  notepad.redo();
  notepad.undo();
  notepad.write('Gauri');
  notepad.redo();
}