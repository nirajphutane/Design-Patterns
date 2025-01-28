
import 'Interpreter.dart';
import 'Context.dart';

void main(final List<String> args) {

  final Context context = Context();

  const String command = 'Convert 10 into Binary';  // Language Grammar or Expression
  const Interpreter interpreter = Interpreter(command);
  final String conversion = interpreter.interpret(context);
  print('$command: $conversion');

  const String command1 = 'Convert 12 into Octal';  // Language Grammar or Expression
  print('$command: ${const Interpreter(command1).interpret(context)}');

  const String command2 = 'Convert 15 into Hexadecimal';  // Language Grammar or Expression
  print('$command: ${const Interpreter(command2).interpret(context)}');
}