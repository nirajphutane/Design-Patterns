
import 'WidgetDecorator.dart';
import 'Widgets.dart';

void main(final List<String> args) {
  const Container(Center(Text('Text-1'))).render();

  print('');
  const WidgetDecorator decorator = Center(Container(Text('Text-2')));
  decorator.render();
}
