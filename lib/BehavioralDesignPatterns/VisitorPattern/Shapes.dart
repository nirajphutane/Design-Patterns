
import 'IVisitor.dart';
import 'IShape.dart';

class Circle implements IShape {
  final int radius;

  Circle(this.radius);

  @override
  void accept(IVisitor visitor) => visitor.saveCircle(this);
}

class Rectangle implements IShape {
  final int height, width;

  Rectangle(this.height, this.width);

  @override
  void accept(IVisitor visitor) => visitor.saveRectangle(this);
}

class Triangle implements IShape {
  final int base, left, right;

  Triangle(this.base, this.left, this.right);

  @override
  void accept(IVisitor visitor) => visitor.saveTriangle(this);
}