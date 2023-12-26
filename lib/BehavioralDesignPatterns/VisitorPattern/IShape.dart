
import 'IVisitor.dart';

abstract interface class IShape {
  void accept(IVisitor visitor);
}