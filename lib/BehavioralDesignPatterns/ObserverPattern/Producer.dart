
import 'dart:math';
import 'ISubject.dart';

class Producer {

  final ISubject _station;

  Producer(this._station);

  Future<void> produce({int iterations = 10, int delay = 1000, int limit = 1000}) async {
    for(int i = 0; i < iterations; i++) {
      await Future.delayed(Duration(milliseconds: delay));
      _station.notifyAll(data: Random.secure().nextInt(limit));
    }
  }
}