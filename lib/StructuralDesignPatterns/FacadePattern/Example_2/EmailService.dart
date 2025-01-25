
abstract interface class IEmailService {

  void send();
}

class Email {
  final String to, subject, message;

  const Email(this.to, this.subject, this.message);

  @override
  String toString() => 'Email sent:\nTo: $to\nSubject: \t$subject\nMessage: \t$message';
}

class EmailService implements IEmailService {

  final Email _email;
  const EmailService(this._email);

  @override
  void send() => print(_email.toString());
}
