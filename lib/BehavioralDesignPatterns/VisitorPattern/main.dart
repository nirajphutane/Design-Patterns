
import 'SaveShapes.dart';
import 'Shapes.dart';

void main(List<String> args) {
  Save save = Save();
  save.saveCircle(Circle(7));
  save.saveRectangle(Rectangle(7, 8));
  save.saveTriangle(Triangle(7, 8, 9));
}