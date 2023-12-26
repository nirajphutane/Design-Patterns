
import 'Consumer.dart';
import 'Producer.dart';
import 'Observer.dart';
import 'Station.dart';

void main(List<String> args) {

  Station station = Station();
  Observer observer = Observer(station);

  Consumer consumer = Consumer(observer);
  Producer producer = Producer(station);

  consumer.consume();
  producer.produce(iterations: 10, delay: 500, limit: 1000 * 1000);
}
