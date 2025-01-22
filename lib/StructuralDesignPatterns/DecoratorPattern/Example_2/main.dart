
import 'WidgetDecorator.dart';
import 'Widgets.dart';

void main(final List<String> args) {
  Container(Center(Text('Text-1'))).render();

  print('');
  final WidgetDecorator decorator = Center(Container(Text('Text-2')));
  decorator.render();
}
