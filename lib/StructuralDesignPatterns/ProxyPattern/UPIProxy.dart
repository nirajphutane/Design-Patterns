
import 'dart:math';

import 'IUpi.dart';
import 'UPI.dart';

class UPIProxy implements IUpi {

  final int _pin;
  late final int _transactionId;

  UPIProxy(this._pin) {
    _transactionId = Random.secure().nextInt(1000000);
  }

  @override
  void pay(final double amount) {
    print('\nTransaction Id for payment request of ₹ $amount is $_transactionId.');
    if(_pin == 1234) {
      UPI().pay(amount);
    } else {
      throw 'You entered incorrect pin.';
    }
  }
}