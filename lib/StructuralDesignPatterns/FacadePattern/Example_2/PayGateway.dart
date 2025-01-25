
import 'PaymentService.dart';

abstract interface class PayGateway {
  void pay(final double amount);
}

class Card implements PayGateway {
  final int cardNumber, cvv;
  const Card(this.cardNumber, this.cvv);

  @override
  void pay(final double amount) => CardPay(this).pay(amount);

  @override
  String toString() => 'Card(CardNumber: $cardNumber, CVV: $cvv)';
}

class UPI implements PayGateway {
  final int userName;
  final String password;
  const UPI(this.userName, this.password);

  @override
  void pay(final double amount) => UPIPay(this).pay(amount);

  @override
  String toString() => 'UPI(UserName: $userName, Password: $password)';
}

abstract class IPay {
  final PayGateway gateway;
  const IPay(this.gateway);

  void pay(final double amount) => gateway.pay(amount);
}

class Pay extends IPay {

  const Pay(super.gateway);
}