
import 'IVisitor.dart';

abstract interface class IVisitable {
  void accept(final IVisitor visitor);
}
