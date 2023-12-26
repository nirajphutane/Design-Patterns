
import 'IPaymentStrategy.dart';

class CardPay implements IPaymentStrategy {

  final String _cardNumber, _cvv;

  CardPay(this._cardNumber, this._cvv);

  @override
  String pay(double amount) => 'You spend amount Rs. $amount via Visa.\nEnjoy shopping!!!';
}

class OnlinePay implements IPaymentStrategy {

  final String _userName, _password;

  OnlinePay(this._userName, this._password);

  @override
  String pay(double amount) =>
      'Your amount Rs. $amount is paid via GPay.\nThank you...';
}