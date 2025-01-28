
import 'Expressions.dart';
import 'IExpression.dart';
import 'Context.dart';

class Interpreter {

  final String input;

  const Interpreter(this.input);

  String interpret(final Context context) {
    context.n =  int.tryParse(RegExp(r'\d+').firstMatch(input)?.group(0)?? '')?? 0;
    late IExpression expression;
    if(input.toLowerCase().contains('binary')) {
      expression = Binary();
    } else if(input.toLowerCase().contains('octal')) {
      expression = Octal();
    } else if(input.toLowerCase().contains('hexadecimal')) {
      expression = Hexadecimal();
    } else {
      return 'Invalid operation!!';
    }
    return expression.interpreter(context);
  }
}