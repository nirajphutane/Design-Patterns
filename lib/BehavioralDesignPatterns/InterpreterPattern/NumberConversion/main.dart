
import 'Interpreter.dart';
import 'Context.dart';

void main(List<String> args) {

  Context context = Context();

  String command = 'Convert 10 into Binary';  // Language Grammar or Expression
  Interpreter interpreter = Interpreter(command);
  String conversion = interpreter.interpret(context);
  print('$command: $conversion');

  command = 'Convert 12 into Octal';  // Language Grammar or Expression
  interpreter = Interpreter(command);
  conversion = interpreter.interpret(context);
  print('$command: $conversion');

  command = 'Convert 15 into Hexadecimal';  // Language Grammar or Expression
  interpreter = Interpreter(command);
  conversion = interpreter.interpret(context);
  print('$command: $conversion');
}