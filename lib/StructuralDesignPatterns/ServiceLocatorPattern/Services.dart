
import 'IService.dart';

enum Services {
  messageService,
  emailService
}

class MessageService implements IService {

  static const Services service = Services.messageService;

  @override
  void execute() => print('${service.name} is working...');

  @override
  String getName() => service.name;
}

class EmailService implements IService {

  static const Services service = Services.emailService;

  @override
  void execute() {
    print('${service.name} is working...');
  }

  @override
  String getName() => service.name;
}
