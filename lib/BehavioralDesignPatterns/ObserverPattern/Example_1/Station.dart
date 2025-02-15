
import 'IObserver.dart';
import 'ISubject.dart';

class Station implements ISubject {

  final Set<IObserver> _observers = {};

  @override
  void add(final IObserver observer) => _observers.add(observer);

  @override
  void notify(final IObserver observer, {final data}) => observer.notifyAll(data: data);

  @override
  void notifyAll({final data}) {
    for(final IObserver observer in _observers) {
      observer.notifyAll(data: data);
    }
  }

  @override
  void remove(final IObserver observer) => _observers.remove(observer);

  @override
  void removeAll() => _observers.clear();
}