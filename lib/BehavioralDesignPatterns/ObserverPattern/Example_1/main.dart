
import 'Consumer.dart';
import 'Producer.dart';
import 'Observer.dart';
import 'Station.dart';

void main(final List<String> args) {

  final Station station = Station();
  final Observer observer = Observer(station);

  final Producer producer = Producer(station);
  final Consumer consumer = Consumer(observer);

  consumer.consume();
  producer.produce(iterations: 10, delay: 500, limit: 1000 * 1000);
}
