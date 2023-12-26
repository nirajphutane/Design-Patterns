
import 'ISubject.dart';
import 'IObserver.dart';

class Observer implements IObserver {

  final Set<Function> _listeners = {};

  Observer(ISubject subject) {
    subject.add(this);
  }

  @override
  void notifyAll({var data}) {
    for(Function listener in _listeners) {
      listener.call(data);
    }
  }

  @override
  void addListener(Function listener) {
    _listeners.add(listener);
  }

  @override
  void removeListener(Function listener) {
    _listeners.remove(listener);
  }

  @override
  void removeAllListener() {
    for(Function listener in _listeners) {
      _listeners.remove(listener);
    }
  }
}