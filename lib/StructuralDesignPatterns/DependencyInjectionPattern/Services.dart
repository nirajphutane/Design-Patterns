
import 'IService.dart';

class EmailService implements IService {

  @override
  void send(String to, String text) {
    print('Email(Sent):\nTo $to\nMessage: $text\n');
  }
}

class MessageService implements IService {

  @override
  void send(String to, String text) {
    print('Message(Sent):\nTo $to\nMessage: $text\n');
  }
}