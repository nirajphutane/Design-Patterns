
import 'Draw.dart';
import 'Shapes.dart';
import 'IShape.dart';

void main(List<String> args) {
  IShape rectangleShape = Rectangle(10, 5);
  IShape circleShape = Circle(7);
  IShape triangleShape = Triangle(10, 15, 17);

  Rectangle rectangle = Rectangle(12, 7);
  Circle circle = Circle(9);
  Triangle triangle = Triangle(12, 17, 19);

  Draw draw = Draw();

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