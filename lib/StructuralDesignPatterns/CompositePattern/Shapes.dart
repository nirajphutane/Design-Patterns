
import 'IShape.dart';

class Rectangle implements IShape {

  final double _length, _width;

  Rectangle(this._length, this._width);

  @override
  void draw(String color) => print('Drawing Rectangle of size $_length * $_width by $color color.');
}

class Circle implements IShape {

  final double _radius;

  Circle(this._radius);

  @override
  void draw(String color) => print('Drawing Circle of radius $_radius by $color color.');
}

class Triangle implements IShape {

  final double _base, _leftSide, _rightSide;

  Triangle(this._base, this._leftSide, this._rightSide);

  @override
  void draw(String color) => print('Drawing Triangle of size $_base * $_leftSide * $_rightSide by $color color.');
}