
import 'Expressions.dart';

void main(final List<String> args) {
  final TerminalExpression expression1 = TerminalExpression('Google');
  final TerminalExpression expression2 = TerminalExpression('IBM');
  print('\nTerminalExpressions:');
  print(expression1.interpreter('Google, IBM, Amazon'));
  print(expression2.interpreter('Oracle, Facebook, Microsoft'));

  final AndExpression andExpression = AndExpression(expression1, expression2);
  print('\nAndExpression:');
  print(andExpression.interpreter('Google, IBM, Amazon'));
  print(andExpression.interpreter('Oracle, IBM, Microsoft'));

  final OrExpression orExpression = OrExpression(expression1, expression2);
  print('\nOrExpression:');
  print(orExpression.interpreter('Google, IBM, Amazon'));
  print(orExpression.interpreter('Oracle, Facebook, Microsoft'));
}