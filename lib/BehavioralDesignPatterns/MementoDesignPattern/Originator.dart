
import 'Memento.dart';

class Originator {
  String? state;

  Memento saveStateToMemento() => Memento(state);

  void retrieveStateFromMemento(Memento memento) => state = memento.getState();
}