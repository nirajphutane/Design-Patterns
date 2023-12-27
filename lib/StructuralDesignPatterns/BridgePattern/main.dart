
import 'Colors.dart';
import 'Shapes.dart';

void main(List<String> args) {

  Red red = Red();
  Green green = Green();
  Yellow yellow = Yellow();

  Rectangle(10, 20, red).draw();
  Rectangle(12, 24, green).draw();
  Rectangle(8, 12, yellow).draw();

  Triangle(10, 20, 30, red).draw();
  Triangle(12, 24, 36, green).draw();
  Triangle(8, 12, 16, yellow).draw();

  Circle(7, red).draw();
  Circle(17, green).draw();
  Circle(77, yellow).draw();
}