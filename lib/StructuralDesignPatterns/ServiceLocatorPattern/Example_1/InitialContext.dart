
import 'Services.dart';
import 'IService.dart';

class InitialContext {

  // IService? lookUp(String jndt): Here JNDT is Java Naming and Directory Interface.

  IService? lookUp(final Services service) {
    switch(service) {
      case Services.messageService:
        return MessageService();
      case Services.emailService:
        return EmailService();
      default:
        return null;
    }
  }

  // Object lookUp(final Services service) {
  //   switch(service) {
  //     case Services.messageService:
  //       return MessageService();
  //     case Services.databaseService:
  //       return DatabaseService();
  //     default:
  //       return null;
  //   }
  // }
}