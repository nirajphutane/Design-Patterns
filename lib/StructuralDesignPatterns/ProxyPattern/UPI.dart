
import 'IUpi.dart';

class UPI implements IUpi {
  
  @override
  void pay(final double amount) => print('You payment of ₹ $amount has been successful.');
}