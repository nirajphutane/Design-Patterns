
import 'IVisitor.dart';
import 'Shapes.dart';

class Save implements IVisitor {

  @override
  void saveCircle(Circle circle) => print('Saving Circle of radius ${circle.radius}.');

  @override
  void saveRectangle(Rectangle rectangle) => print('Saving Rectangle of size ${rectangle.height} * ${rectangle.width}.');

  @override
  void saveTriangle(Triangle triangle) => print('Saving Triangle of sides ${triangle.base}, ${triangle.left}, ${triangle.right}.');
}