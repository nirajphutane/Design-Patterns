
import 'IObserver.dart';
import 'ISubject.dart';

class Station implements ISubject {

  final Set<IObserver> _observers = {};

  @override
  void add(IObserver observer) {
    _observers.add(observer);
  }

  @override
  void notify(IObserver observer, {var data}) {
    observer.notifyAll(data: data);
  }

  @override
  void notifyAll({var data}) {
    for(IObserver observer in _observers) {
      observer.notifyAll(data: data);
    }
  }

  @override
  void remove(IObserver observer) {
    _observers.remove(observer);
  }

  @override
  void removeAll() {
    for(IObserver observer in _observers) {
      _observers.remove(observer);
    }
  }
}