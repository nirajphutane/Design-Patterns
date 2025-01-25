
import 'PayGateway.dart';

abstract interface class IPaymentService {

  void pay(final double amount);
}

class CardPay implements IPaymentService {
  
  final Card _card;
  const CardPay(this._card);

  @override
  void pay(final double amount) =>print('Amount \$${amount.toStringAsFixed(2)} paid by Card details: $_card');
}

class UPIPay implements IPaymentService {

  final UPI _upi;
  const UPIPay(this._upi);

  @override
  void pay(final double amount) => print('Amount \$${amount.toStringAsFixed(2)} paid by UPI details: $_upi');
}