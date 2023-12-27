
import 'IShape.dart';

class Draw implements IShape {

  List<IShape> _shapes = [];

  void add(IShape shape) {
    _shapes.add(shape);
  }

  void remove(IShape shape) {
    _shapes.remove(shape);
  }

  void clear() {
    _shapes = [];
  }

  @override
  void draw(String color) {
    for(IShape shape in _shapes) {
      shape.draw(color);
    }
  }
}