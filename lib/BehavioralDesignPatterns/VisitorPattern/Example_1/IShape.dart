
import 'IVisitor.dart';

abstract interface class IShape {
  void accept(final IVisitor visitor);
}