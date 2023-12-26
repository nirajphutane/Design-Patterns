
import 'IObserver.dart';

abstract interface class ISubject {

  void add(IObserver observer);

  void remove(IObserver observer);

  void removeAll();

  void notify(IObserver observer, {var data});

  void notifyAll({var data});
}