
import 'ISubject.dart';
import 'IObserver.dart';

class Observer implements IObserver {

  final Set<Function> _listeners = {};

  Observer(final ISubject subject) {
    subject.add(this);
  }

  @override
  void notifyAll({final data}) {
    for(final Function listener in _listeners) {
      listener.call(data);
    }
  }

  @override
  void addListener(final Function listener) => _listeners.add(listener);

  @override
  void removeListener(final Function listener) => _listeners.remove(listener);

  @override
  void removeAllListener() {
    for(final Function listener in _listeners) {
      _listeners.remove(listener);
    }
  }
}