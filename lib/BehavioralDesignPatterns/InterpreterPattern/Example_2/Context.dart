
class Context {

  double _radius = 0;
  double _length = 0, _width = 0;
  double _leftSide = 0, _rightSide = 0, _base = 0;

  Context.ofCircle(this._radius);

  Context.ofRectangle(this._length, this._width);

  Context.ofTriangle(this._leftSide, this._rightSide, this._base);

  double get radius => _radius;

  double get length => _length;

  double get width => _width;

  double get left => _leftSide;

  double get right => _rightSide;

  double get base => _base;
}