
import 'IOperationStrategy.dart';

class OperationManager {

  final IOperationStrategy _strategy;

  OperationManager(this._strategy);

  double perform() {
    return _strategy.calculate();
  }
}