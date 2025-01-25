
import 'Services.dart';
import 'DependencyInjection.dart';
import 'IConsumer.dart';
import 'IInjector.dart';

class EmailServiceInjector implements IInjector {

  @override
  IConsumer getConsumer() => DependencyInjection(EmailService());
}

class MessageServiceInjector implements IInjector {

  @override
  IConsumer getConsumer() => DependencyInjection(MessageService());
}