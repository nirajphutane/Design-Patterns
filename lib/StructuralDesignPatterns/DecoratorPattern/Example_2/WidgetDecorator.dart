
import 'IWidget.dart';

abstract class WidgetDecorator implements IWidget {

  final IWidget iWidget;
  const WidgetDecorator(this.iWidget);

  @override
  void render() => iWidget.render();
}