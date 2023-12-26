
class Context {

  double? _radius;
  double? _length, _width;
  double? _leftSide, _rightSide, _base;

  Context.ofCircle(this._radius);

  Context.ofRectangle(this._length, this._width);

  Context.ofTriangle(this._leftSide, this._rightSide, this._base);

  double get radius => _radius?? 0;

  double get length => _length?? 0;

  double get width => _width?? 0;

  double get left => _leftSide?? 0;

  double get right => _rightSide?? 0;

  double get base => _base?? 0;
}