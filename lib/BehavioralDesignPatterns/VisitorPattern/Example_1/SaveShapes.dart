
import 'IVisitor.dart';
import 'Shapes.dart';

class Save implements IVisitor {

  const Save();

  @override
  void saveCircle(final Circle circle) => print('Saving Circle of radius ${circle.radius}.');

  @override
  void saveRectangle(final Rectangle rectangle) => print('Saving Rectangle of size ${rectangle.height} * ${rectangle.width}.');

  @override
  void saveTriangle(final Triangle triangle) => print('Saving Triangle of sides ${triangle.base}, ${triangle.left}, ${triangle.right}.');
}