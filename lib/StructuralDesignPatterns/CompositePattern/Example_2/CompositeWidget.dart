
import 'IWidget.dart';

class CompositeWidget implements IWidget {

  final List<IWidget> _children;

  const CompositeWidget([this._children = const []]);

  void add(final IWidget widget) => _children.add(widget);

  void remove(final IWidget widget) => _children.remove(widget);

  @override
  void render() {
    print('\nWidget Tree:');
    for(final IWidget widget in _children) {
      widget.render();
    }
    print('');
  }
}