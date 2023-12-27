
import 'IConsumer.dart';
import 'IInjector.dart';
import 'ServiceInjectors.dart';

void main(List<String> args) {

  IInjector injector = EmailServiceInjector();
  IConsumer consumer = injector.getConsumer();
  consumer.send('Mike@google.com', 'Hi Mike');

  injector = MessageServiceInjector();
  consumer = injector.getConsumer();
  consumer.send('987654321', 'Hi Mike');
}