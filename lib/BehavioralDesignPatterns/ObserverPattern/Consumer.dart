
import 'IObserver.dart';

class Consumer {

  final IObserver _observer;

  Consumer(this._observer);

  void consume() {
    _observer.addListener(display);
  }

  void display(int data) => print('$data');
}