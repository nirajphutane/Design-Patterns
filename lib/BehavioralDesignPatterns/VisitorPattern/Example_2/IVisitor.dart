
import 'Employees.dart';

abstract interface class IVisitor {

  void visitManager(final Manager manager);
  void visitDeveloper(final Developer developer);
}