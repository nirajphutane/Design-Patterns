
import 'IObserver.dart';

abstract interface class ISubject {

  void add(final IObserver observer);

  void remove(final IObserver observer);

  void removeAll();

  void notify(final IObserver observer, {final data});

  void notifyAll({final data});
}