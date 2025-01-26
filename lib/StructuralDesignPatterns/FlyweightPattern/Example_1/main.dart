
import 'IShape.dart';
import 'Shapes.dart';
import 'ShapeFactory.dart';

void main(final List<String> args) {

  final ShapeFactory shapeFactory = ShapeFactory();

  IShape iShape = shapeFactory.getShape(IShapes.rectangle,'Green');
  iShape.draw();

  iShape = shapeFactory.getShape(IShapes.rectangle,'Green')
      ..x = 100
      ..y = 200;
  iShape.draw();

  shapeFactory.getShape(IShapes.rectangle,'Red').draw();

  iShape = shapeFactory.getShape(IShapes.rectangle,'Red')
    ..x = 0
    ..y = 0
    ..draw();

  shapeFactory.getShape(IShapes.rectangle,'Yellow').draw();

  shapeFactory.getShape(IShapes.rectangle,'Blue')
    ..x = 120
    ..y = 240
    ..draw();

  iShape = shapeFactory.getShape(IShapes.rectangle, 'Green')
    ..x = 135
    ..y = 235;
  iShape.draw();

  Rectangle rectangle = shapeFactory.getShape(IShapes.rectangle, 'Black') as Rectangle;
  rectangle.draw();

  rectangle = shapeFactory.getShape(IShapes.rectangle, 'Black') as Rectangle
    ..x = 199
    ..y = 991;
  rectangle.draw();

  iShape = shapeFactory.getShape(IShapes.circle,'Pink');
  iShape.draw();

  iShape = shapeFactory.getShape(IShapes.circle,'Pink')
    ..x = 100
    ..y = 200;
  iShape.draw();

  iShape = shapeFactory.getShape(IShapes.circle,'Brown');
  iShape.draw();

  iShape = shapeFactory.getShape(IShapes.circle,'Brown')
    ..x = 0
    ..y = 0;
  iShape.draw();

  iShape = shapeFactory.getShape(IShapes.circle,'Orange');
  iShape.draw();

  iShape = shapeFactory.getShape(IShapes.circle,'SkyBlue')
    ..x = 120
    ..y = 240;
  iShape.draw();

  iShape = shapeFactory.getShape(IShapes.circle, 'Pink')
    ..x = 135
    ..y = 235
    ..draw();

  final Circle circle = shapeFactory.getShape(IShapes.circle, 'White') as Circle;
  circle.draw();

  shapeFactory.getShape(IShapes.circle, 'White') as Circle
    ..x = 199
    ..y = 991
    ..draw();
}