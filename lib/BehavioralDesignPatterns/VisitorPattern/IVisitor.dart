
import 'Shapes.dart';

abstract interface class IVisitor {

  void saveCircle(Circle circle);

  void saveRectangle(Rectangle rectangle);

  void saveTriangle(Triangle triangle);
}