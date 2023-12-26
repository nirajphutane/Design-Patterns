
import 'Operations.dart';
import 'OperationManager.dart';

void main(List<String> args) {

  Addition addition = Addition(10, 20);
  OperationManager manager = OperationManager(addition);
  double result = manager.perform();
  print('Addition: ${addition.toString()} = $result');

  Subtraction subtraction = Subtraction(10, 20);
  manager = OperationManager(subtraction);
  result = manager.perform();
  print('Subtraction: ${subtraction.toString()} = $result');
}