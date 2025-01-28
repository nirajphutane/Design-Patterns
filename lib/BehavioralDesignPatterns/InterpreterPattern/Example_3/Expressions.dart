
import 'Context.dart';
import 'IExpression.dart';

class Binary implements IExpression {

  const Binary();

  @override
  String interpreter(final Context context) => context.n.toRadixString(2);
}

class Octal implements IExpression {

  const Octal();

  @override
  String interpreter(final Context context) => context.n.toRadixString(8);
}

class Hexadecimal implements IExpression {

  const Hexadecimal();

  @override
  String interpreter(final Context context) => context.n.toRadixString(16).toUpperCase();
}
