
class Notepad {
  final List<String> _paragraph = [];
  final List<String> _undo = [];

  void write(final String line) {
    _paragraph.add(line);
    read();
  }

  void read() => print('\n"${_paragraph.join('\n')}"');

  void undo() {
    if (_paragraph.isNotEmpty) {
      _undo.add(_paragraph.removeLast());
      read();
    }
  }

  void redo() {
    if (_undo.isNotEmpty) {
      _paragraph.add(_undo.removeLast());
      read();
    }
  }
}
