
import 'Expressions.dart';

void main(List<String> args) {
  TerminalExpression expression1 = TerminalExpression('Google');
  TerminalExpression expression2 = TerminalExpression('IBM');
  print('\nTerminalExpressions:');
  print(expression1.interpreter('Google, IBM, Amazon'));
  print(expression2.interpreter('Oracle, Facebook, Microsoft'));

  AndExpression andExpression = AndExpression(expression1, expression2);
  print('\nAndExpression:');
  print(andExpression.interpreter('Google, IBM, Amazon'));
  print(andExpression.interpreter('Oracle, IBM, Microsoft'));

  OrExpression orExpression = OrExpression(expression1, expression2);
  print('\nOrExpression:');
  print(orExpression.interpreter('Google, IBM, Amazon'));
  print(orExpression.interpreter('Oracle, Facebook, Microsoft'));
}