
import 'Shapes.dart';

void main(final List<String> args) {
  const Circle circle = Circle(7);
  print('\nHashCode: ${circle.hashCode}');
  circle.draw();

  final Circle clonedCircle = circle.clone();
  print('\nHashCode: ${clonedCircle.hashCode}');
  clonedCircle.draw();

  final Rectangle rectangle = Rectangle(10, 5);
  print('\nHashCode: ${rectangle.hashCode}');
  rectangle.draw();
  print('Is rectangle cloned? ${rectangle.isClone}');

  final Rectangle clonedRectangle1 = rectangle.clone();
  print('\nHashCode: ${clonedRectangle1.hashCode}');
  clonedRectangle1.draw();
  print('Is clonedRectangle1 cloned? ${clonedRectangle1.isClone}');
  print('Is clonedRectangle1 cloned from rectangle? ${rectangle == clonedRectangle1}');

  final Rectangle clonedRectangle2 = rectangle.clone();
  print('\nHashCode: ${clonedRectangle2.hashCode}');
  clonedRectangle2.draw();
  print('Is clonedRectangle2 cloned? ${clonedRectangle2.isClone}');
  print('Is clonedRectangle2 cloned from rectangle? ${rectangle == clonedRectangle2}');
  print('Is clonedRectangle2 cloned from clonedRectangle1? ${clonedRectangle1 == clonedRectangle2}');
}