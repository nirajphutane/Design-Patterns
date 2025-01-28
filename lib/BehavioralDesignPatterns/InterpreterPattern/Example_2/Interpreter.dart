
import 'Expressions.dart';
import 'IExpression.dart';
import 'Context.dart';
import 'InterpreterEngine.dart';

class Interpreter {

  void interpret(final String query) {
    try {
      print('\n$query');
      final InterpreterEngine engine = InterpreterEngine(query);
      final Expressions expression = engine.getExpression();
      Context context;
      IExpression iExpression;
      switch(expression) {
        case Expressions.circle: {
          final double radius = engine.getRadius();
          context = Context.ofCircle(radius);
          iExpression = AreaOfCircle();
          break;
        }
        case Expressions.rectangle: {
          final (double length, double width) = engine.getLengthAndWidth();
          context = Context.ofRectangle(length, width);
          iExpression = AreaOfRectangle();
          break;
        }
        case Expressions.triangle: {
          final (double leftSide, double rightSide, double base) = engine.getSides();
          context = Context.ofTriangle(leftSide, rightSide, base);
          iExpression = AreaOfTriangle();
          break;
        }
        default: throw 'Exception: Un-supported Expression!';
      }
      print('Area is ${iExpression.interpret(context).toString()}');
    } catch(error) {
      print(error);
    }
  }
}