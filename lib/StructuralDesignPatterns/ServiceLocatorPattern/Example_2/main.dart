
import 'MessagingService.dart';
import 'ServiceLocator.dart';

void main(final List<String> args) {
  ServiceLocator.instance.register<Email>(Email());
  (ServiceLocator.instance.get<Email>() as IMessagingService).send();
  ServiceLocator.instance.register<SMS>(SMS());
  (ServiceLocator.instance.get<SMS>() as SMS).send();
}

