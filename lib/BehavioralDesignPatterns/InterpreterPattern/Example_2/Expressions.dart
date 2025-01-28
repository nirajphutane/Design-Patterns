
import 'dart:math';
import 'Context.dart';
import 'IExpression.dart';

class AreaOfCircle implements IExpression {

  @override
  double interpret(final Context context) => pi * pow(context.radius, 2);
}

class AreaOfRectangle implements IExpression {

  @override
  double interpret(final Context context) => context.length * context.width;
}

class AreaOfTriangle implements IExpression {

  @override
  double interpret(final Context context) {
    double s = (context.left + context.right + context.base)/2;
    return sqrt((s * (s-context.left) * (s-context.right) * (s-context.base)));
  }
}