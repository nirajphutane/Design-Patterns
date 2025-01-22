
import 'IBeverage.dart';

class BlackCoffee implements IBeverage {

  @override
  double getCost() => 10.0;

  @override
  String getDescription() => 'Water + Coffee';
}