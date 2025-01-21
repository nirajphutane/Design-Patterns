
import 'Widgets.dart';
import 'CompositeWidget.dart';

void main(final List<String> args) {

  final Text text1 = Text('Text-1');
  final Button button1 = Button('Button-1');
  final Image image1 = Image('Image-1');

  final CompositeWidget widget = CompositeWidget([text1, button1, image1]);
  widget.render();

  widget.add(Row([Text('Text-2'), Button('Button-2'), Image('Image-2')]));
  widget.render();

  widget.add(Column([Text('Text-3'), Button('Button-3'), Image('Image-3')]));
  widget.render();
}