
import 'dart:math';
import 'ICloneable.dart';

class Circle implements ICloneable {

  final double _radius;

  Circle(this._radius);

  void draw() => print('Drawing Circle of radius $_radius.');

  @override
  Circle clone() => Circle(_radius);
}

class Rectangle implements ICloneable {

  double? _length, _width;
  int? _hashCode;
  bool isClone = false;

  Rectangle(this._length, this._width);

  Rectangle._fromSource(Rectangle source) {
    _length = source._length;
    _width = source._width;
    _hashCode = source.hashCode;
    isClone = true;
  }

  void draw() => print('Drawing Rectangle of size $_length * $_width.');

  @override
  Rectangle clone() {
    return Rectangle._fromSource(this);
  }

  @override
  int get hashCode => _hashCode = _hashCode?? Random().hashCode;

  @override
  bool operator == (Object other) {
    if (other is! Rectangle) return false;
    return other.isClone && other.hashCode == hashCode;
  }
}