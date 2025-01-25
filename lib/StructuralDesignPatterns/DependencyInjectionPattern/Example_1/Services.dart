
import 'IService.dart';

class EmailService implements IService {

  @override
  void send(final String to, final String text) => print('Email(Sent):\nTo $to\nMessage: $text\n');
}

class MessageService implements IService {

  @override
  void send(final String to, final String text) => print('Email(Sent):\nTo $to\nMessage: $text\n');
}