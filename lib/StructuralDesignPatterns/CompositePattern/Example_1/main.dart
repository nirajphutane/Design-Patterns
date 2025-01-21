
import 'Draw.dart';
import 'Shapes.dart';
import 'IShape.dart';

void main(final List<String> args) {
  final IShape rectangleShape = Rectangle(10, 5);
  final IShape circleShape = Circle(7);
  final IShape triangleShape = Triangle(10, 15, 17);

  final Rectangle rectangle = Rectangle(12, 7);
  final Circle circle = Circle(9);
  final Triangle triangle = Triangle(12, 17, 19);

  final Draw draw = Draw();

  draw.add(rectangleShape);
  draw.add(circleShape);
  draw.add(triangleShape);
  draw.add(rectangle);
  draw.add(circle);
  draw.add(triangle);
  draw.draw('Orange');

  draw.remove(triangleShape);
  draw.remove(rectangle);
  draw.draw('Red');

  draw.clear();
  draw.draw('Green');
}