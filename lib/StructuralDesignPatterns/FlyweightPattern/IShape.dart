
abstract interface class IShape {
  double? _x, _y;
  set x(double x) => _x = x;
  set y(double y) => _y = y;
  void draw();
}

enum IShapes {
  rectangle,
  circle
}