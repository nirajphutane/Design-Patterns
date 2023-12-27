import 'AbstractShape.dart';
import 'IColor.dart';

class Rectangle extends AbstractShape {
  final int _length, _width;

  Rectangle(this._length, this._width, IColor color)
      : super(color);

  void draw() {
    print('\nDrawing Rectangle of size $_length * $_width.');
    color.fill();
  }
}

class Triangle extends AbstractShape {
  final int _length, _leftSide, _rightSide;

  Triangle(this._length, this._leftSide, this._rightSide, IColor color)
      : super(color);

  void draw() {
    print('\nDrawing Triangle of sides $_length, $_leftSide, $_rightSide.');
    color.fill();
  }
}

class Circle extends AbstractShape {
  final int _radius;

  Circle(this._radius, IColor color)
      : super(color);

  void draw() {
    print('\nDrawing Circle of radius $_radius.');
    color.fill();
  }
}