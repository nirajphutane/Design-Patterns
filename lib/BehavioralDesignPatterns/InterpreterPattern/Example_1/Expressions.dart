
import 'IExpression.dart';

class TerminalExpression implements IExpression {

  final String data;

  TerminalExpression(this.data);

  @override
  bool interpreter(final String context) => context.contains(data);
}

class AndExpression implements IExpression {

  final IExpression expression1, expression2;

  AndExpression(this.expression1, this.expression2);

  @override
  bool interpreter(final String context) => expression1.interpreter(context) && expression2.interpreter(context);
}

class OrExpression implements IExpression {

  final IExpression expression1, expression2;

  OrExpression(this.expression1, this.expression2);

  @override
  bool interpreter(final String context) => expression1.interpreter(context) || expression2.interpreter(context);
}