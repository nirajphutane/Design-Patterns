
import 'IUpi.dart';

class UPI implements IUpi {
  
  @override
  void pay(double amount) => print('You payment of ₹ $amount has been successful.');
}