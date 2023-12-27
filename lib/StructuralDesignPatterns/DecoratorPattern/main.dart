
import 'Beverages.dart';
import 'BlackCoffee.dart';
import 'IBeverage.dart';

void main(List<String> args) {
  IBeverage blackCoffee = BlackCoffee();
  print('${blackCoffee.getDescription()} \t\t\t\t\t\t\t\t ${blackCoffee.getCost()}');

  IBeverage milkAdded = Milk(blackCoffee);
  print('${milkAdded.getDescription()} \t\t\t\t\t\t ${milkAdded.getCost()}');

  IBeverage chocolateAdded = Chocolate(milkAdded as Milk);
  print('${chocolateAdded.getDescription()} \t\t\t ${chocolateAdded.getCost()}');

  IBeverage sugarAdded = Sugar(blackCoffee);
  print('${sugarAdded.getDescription()} \t\t\t\t\t\t ${sugarAdded.getCost()}');

  sugarAdded = Sugar(milkAdded);
  print('${sugarAdded.getDescription()} \t\t\t\t ${sugarAdded.getCost()}');

  sugarAdded = Sugar(chocolateAdded);
  print('${sugarAdded.getDescription()} \t ${sugarAdded.getCost()}');
 }
