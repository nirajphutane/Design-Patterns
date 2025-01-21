
import 'Widgets.dart';
import 'CompositeWidget.dart';

void main(final List<String> args) {
  CompositeWidget(
      Column(
          [
            Row([Button('Button-1')]),
            Row([Text('Text-2'), Button('Button-2'), Image('Image-2')]),
            Row([Image('Image-3')])
          ]
      )
  ).render();
}