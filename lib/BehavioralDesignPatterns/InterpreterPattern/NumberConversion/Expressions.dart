
import 'Context.dart';
import 'IExpression.dart';

class Binary implements IExpression {

  @override
  String interpreter(Context context) => context.n.toRadixString(2);
}

class Octal implements IExpression {

  @override
  String interpreter(Context context) => context.n.toRadixString(8);
}

class Hexadecimal implements IExpression {

  @override
  String interpreter(Context context) => context.n.toRadixString(16).toUpperCase();
}
