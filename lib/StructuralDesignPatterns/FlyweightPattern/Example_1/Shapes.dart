
import 'IShape.dart';

class Circle implements IShape {

  double? _x, _y;
  final String color;

  Circle(this.color);

  @override
  set x(final double x) => _x = x;
  @override
  set y(final double y) => _y = y;

  get xCoordinate => _x?? 0.0;
  get yCoordinate => _y?? 0.0;

  @override
  void draw() => print('Hashcode: $hashCode:- Drawing Circle of $color color at P($xCoordinate, $yCoordinate).');
}

class Rectangle implements IShape {

  double? _x, _y;
  final String color;

  Rectangle(this.color);

  @override
  set x(final double x) => _x = x;
  @override
  set y(final double y) => _y = y;

  get xCoordinate => _x?? 0.0;
  get yCoordinate => _y?? 0.0;

  @override
  void draw() => print('Hashcode: $hashCode:- Drawing Rectangle of $color color at P($xCoordinate, $yCoordinate).');
}