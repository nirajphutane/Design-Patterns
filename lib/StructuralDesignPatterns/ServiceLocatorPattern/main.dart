
import 'IService.dart';
import 'ServiceLocator.dart';
import 'Services.dart';

void main(List<String> args) {
  IService messageService = ServiceLocator.getService(MessageService.service);
  print('${messageService.getName()}: ${messageService.hashCode}');
  messageService.execute();

  messageService = ServiceLocator.getService(MessageService.service);
  print('${messageService.getName()}: ${messageService.hashCode}');
  messageService.execute();

  IService emailService = ServiceLocator.getService(EmailService.service);
  print('${emailService.getName()}: ${emailService.hashCode}');
  emailService.execute();

  emailService = ServiceLocator.getService(EmailService.service);
  print('${emailService.getName()}: ${emailService.hashCode}');
  emailService.execute();

  messageService = ServiceLocator.getService(MessageService.service);
  print('${messageService.getName()}: ${messageService.hashCode}');
  messageService.execute();
}