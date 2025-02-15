
import 'Shapes.dart';

abstract interface class IVisitor {

  void saveCircle(final Circle circle);

  void saveRectangle(final Rectangle rectangle);

  void saveTriangle(final Triangle triangle);
}