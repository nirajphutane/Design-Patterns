
import 'IOperationStrategy.dart';

class OperationManager {

  final IOperationStrategy _strategy;

  const OperationManager(this._strategy);

  double perform() => _strategy.calculate();
}