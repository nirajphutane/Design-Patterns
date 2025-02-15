
import 'Operations.dart';
import 'OperationManager.dart';

void main(final List<String> args) {

  const Addition addition = Addition(10, 20);
  const OperationManager manager = OperationManager(addition);
  final double result = manager.perform();
  print('Addition: ${addition.toString()} = $result');

  const Subtraction subtraction = Subtraction(10, 20);
  print('Subtraction: ${subtraction.toString()} = ${const OperationManager(subtraction).perform()}');
}