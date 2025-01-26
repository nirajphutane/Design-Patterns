
abstract interface class IMessagingService {

  void send();
}

class Email implements IMessagingService {

  @override
  void send() => print('Email sent!');
}

class SMS implements IMessagingService {

  @override
  void send() => print('SMS sent!');
}