
abstract interface class IShape {
  set x(final double x);
  set y(final double y);
  void draw();
}

enum IShapes {
  rectangle,
  circle
}