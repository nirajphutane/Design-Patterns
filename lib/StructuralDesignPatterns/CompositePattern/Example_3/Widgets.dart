
import 'dart:io';
import 'IWidget.dart';

class Text implements SingleChildWidget {

  final String text;
  const Text(this.text);

  @override
  void render() => stdout.write('($text)');
}

class Button implements SingleChildWidget {

  final String label;
  const Button(this.label);

  @override
  void render() => stdout.write('[$label]');
}

class Image implements SingleChildWidget {

  final String image;
  const Image(this.image);

  @override
  void render() => stdout.write('{$image}');
}

class Row implements MultiChildWidget {

  final List<IWidget> children;

  const Row(this.children);

  @override
  void render() {
    for(final IWidget widget in children) {
      widget.render();
    }
  }
}

class Column implements MultiChildWidget {

  final List<IWidget> children;

  const Column(this.children);

  @override
  void render() {
    for(final IWidget widget in children) {
      widget.render();
      print('');
    }
  }
}
