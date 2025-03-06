
import 'IVisitable.dart';
import 'IShape.dart';
import 'IVisitor.dart';

class Circle implements IShape, IVisitable {

  final double radius;
  const Circle(this.radius);

  @override
  void draw() => print('Circle of radius $radius cm.');

  @override
  void area(final IVisitor visitor) => visitor.areaOfCircle(this);
}

class Rectangle implements IShape, IVisitable {

  final double height, width;
  const Rectangle(this.height, this.width);

  @override
  void draw() => print('Rectangle of size $height cm by $width cm.');

  @override
  void area(final IVisitor visitor) => visitor.areaOfRectangle(this);
}