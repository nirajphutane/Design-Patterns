
import 'Visitors.dart';
import 'Shapes.dart';

void main(final List<String> args) {
  const Circle(7.7)
    ..draw()
    ..area(const Area());

  const Rectangle(7.7, 9.99)
    ..draw()
    ..area(const Area());
}