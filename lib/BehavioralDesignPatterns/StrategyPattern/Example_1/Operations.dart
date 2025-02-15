
import 'IOperationStrategy.dart';

class Addition implements IOperationStrategy {

  final double _n1, _n2;

  const Addition(this._n1, this._n2);

  @override
  double calculate() => _n1 + _n2;

  @override
  String toString() => '$_n1 + $_n2';
}

class Subtraction implements IOperationStrategy {

  final double _n1, _n2;

  const Subtraction(this._n1, this._n2);

  @override
  double calculate() => _n1 - _n2;

  @override
  String toString() => '$_n1 - $_n2';
}