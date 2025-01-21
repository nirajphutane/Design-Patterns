
import 'IWidget.dart';

class CompositeWidget implements IWidget {

  final MultiChildWidget widget;

  const CompositeWidget(this.widget);

  @override
  void render() {
    print('\nWidget Tree:');
    widget.render();
    print('');
  }
}