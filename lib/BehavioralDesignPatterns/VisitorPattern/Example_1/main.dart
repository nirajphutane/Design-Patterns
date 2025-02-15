
import 'SaveShapes.dart';
import 'Shapes.dart';

void main(final List<String> args) {
  const Save save = Save();
  save.saveCircle(const Circle(7));
  save.saveRectangle(const Rectangle(7, 8));
  save.saveTriangle(const Triangle(7, 8, 9));
}