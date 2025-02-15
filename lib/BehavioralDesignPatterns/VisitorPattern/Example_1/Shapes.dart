
import 'IVisitor.dart';
import 'IShape.dart';

class Circle implements IShape {
  final int radius;

  const Circle(this.radius);

  @override
  void accept(final IVisitor visitor) => visitor.saveCircle(this);
}

class Rectangle implements IShape {
  final int height, width;

  const Rectangle(this.height, this.width);

  @override
  void accept(final IVisitor visitor) => visitor.saveRectangle(this);
}

class Triangle implements IShape {
  final int base, left, right;

  const Triangle(this.base, this.left, this.right);

  @override
  void accept(final IVisitor visitor) => visitor.saveTriangle(this);
}