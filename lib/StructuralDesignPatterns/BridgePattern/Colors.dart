
import 'IColor.dart';

class Red implements IColor {

  final String _color = 'Red';

  @override
  void fill() => print('Filling shape with $_color color.');
}

class Green implements IColor {

  final String _color = 'Green';

  @override
  void fill() => print('Filling shape with $_color color.');
}

class Yellow implements IColor {

  final String _color = 'Yellow';

  @override
  void fill() => print('Filling shape with $_color color.');
}