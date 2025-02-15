
import 'Originator.dart';
import 'Memento.dart';

class CareTaker {
  final List<Memento> _history = [];

  set save(final Memento memento) => _history.add(memento);

  void retrieve(final Originator originator) {
    if (_history.isNotEmpty) {
      originator.save = _history.last;
    }
  }

  void clear(final Originator originator) {
    originator.save = Memento(null);
    _history.clear();
  }
}