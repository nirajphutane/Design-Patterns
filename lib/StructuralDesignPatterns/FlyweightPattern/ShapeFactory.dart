
import 'IShape.dart';
import 'Shapes.dart';

class ShapeFactory {

  // Create a rectangle for every color
  final Map<String, IShape> map = {};

  IShape getShape(IShapes iShape, String color) {
    if(!map.containsKey(color)) {
      switch(iShape) {
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