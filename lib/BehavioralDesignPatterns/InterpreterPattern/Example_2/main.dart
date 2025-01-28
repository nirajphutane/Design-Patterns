
import 'Interpreter.dart';

void main(final List<String> args) {
  final Interpreter interpreter = Interpreter();

  interpreter.interpret('Calculate area of Circle of radius 10.3.');  // Language Grammar or Expression

  interpreter.interpret('Calculate area of Rectangle of length 23.454 and width 37.846.');  // Language Grammar or Expression

  interpreter.interpret('Calculate area of Square of 10.');  // Language Grammar or Expression

  interpreter.interpret('Calculate area of Triangle of sides 19.364, 78.389, 94.365.');  // Language Grammar or Expression

  interpreter.interpret('Calculate area of Triangle of side 8.');  // Language Grammar or Expression

  interpreter.interpret('Calculate area of Circle');  // Language Grammar or Expression

  interpreter.interpret('Calculate circumference of Circle of radius 10.3.');  // Language Grammar or Expression
}