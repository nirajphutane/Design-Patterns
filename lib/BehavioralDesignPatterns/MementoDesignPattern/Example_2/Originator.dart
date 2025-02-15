
import 'Memento.dart';

class Originator {

  String? _line;

  Memento get memento => Memento(_line);

  set save(final Memento memento) => _line = memento.line;
}