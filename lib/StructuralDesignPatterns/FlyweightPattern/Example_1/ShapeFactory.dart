
import 'IShape.dart';
import 'Shapes.dart';

class ShapeFactory {

  final Map<String, IShape> map = {};

  IShape getShape(final IShapes shape, final String color) {
    if(!map.containsKey(color)) {
      switch(shape) {
        case IShapes.rectangle: {
          map[color] = Rectangle(color);
          break;
        }
        case IShapes.circle: {
          map[color] = Circle(color);
          break;
        }
      }
    }
    return map[color]!;
  }
}