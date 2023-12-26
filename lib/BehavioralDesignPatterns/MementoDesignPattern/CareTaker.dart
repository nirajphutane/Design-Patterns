
import 'Originator.dart';
import 'Memento.dart';

class CareTaker {
  final List<Memento> _history = [];

  void save(Memento memento) => _history.add(memento);

  void retrieve(Originator originator, int index) {
    if(0 <= index && index < _history.length) {
      originator.retrieveStateFromMemento(_history[index]);
    } else {
      originator.retrieveStateFromMemento(Memento(null));
    }
  }

  void undo(Originator originator) {
    if(_history.isNotEmpty) {
      originator.retrieveStateFromMemento(_history.removeLast());
    } else {
      originator.retrieveStateFromMemento(Memento(null));
    }
  }
}