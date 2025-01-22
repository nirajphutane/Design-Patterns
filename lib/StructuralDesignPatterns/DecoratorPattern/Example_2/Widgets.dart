
import 'IWidget.dart';
import 'WidgetDecorator.dart';

class Center extends WidgetDecorator {

  const Center(final IWidget widget): super(widget);

  @override
  void render() {
    super.render();
    print('  ^');
    print('  |');
    print('Center');
  }
}

class Container extends WidgetDecorator {

  const Container(final IWidget widget): super(widget);

  @override
  void render() {
    super.render();
    print('  ^');
    print('  |');
    print('Container');
  }
}

class Text implements IWidget {

  final String text;

  const Text(this.text);

  @override
  void render() => print('{$text}');
}