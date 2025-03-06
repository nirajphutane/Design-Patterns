
import 'Shapes.dart';
import 'IVisitor.dart';
import 'dart:math';

class Area implements IVisitor {

  const Area();

  @override
  void areaOfCircle(final Circle circle) => print('Area of circle is ${(pi * pow(circle.radius, 2)).toStringAsFixed(2)} cm^2.');

  @override
  void areaOfRectangle(final Rectangle rectangle)  => print('Area of rectangle is ${(rectangle.height * rectangle.width).toStringAsFixed(2)} cm^2.');
}