
import 'IShape.dart';

class Draw implements IShape {

  final List<IShape> _shapes = [];

  void add(final IShape shape) => _shapes.add(shape);

  void remove(final IShape shape) => _shapes.remove(shape);

  void clear() => _shapes.clear();

  @override
  void draw(final String color) {
    for(final IShape shape in _shapes) {
      shape.draw(color);
    }
  }
}