
import 'IPaymentStrategy.dart';

class CardPay implements IPaymentStrategy {

  final String _cardNumber, _cvv;

  const CardPay(this._cardNumber, this._cvv);

  @override
  String pay(final double amount) => 'You spend amount Rs. $amount via Visa(C.N: $_cardNumber).\nEnjoy shopping!!!';
}

class OnlinePay implements IPaymentStrategy {

  final String _userName, _password;

  const OnlinePay(this._userName, this._password);

  @override
  String pay(double amount) => 'Your amount Rs. $amount is paid via GPay(U.N: $_userName).\nThank you...';
}