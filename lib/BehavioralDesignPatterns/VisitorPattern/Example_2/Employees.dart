
import 'IVisitable.dart';
import 'AbstractEmployee.dart';
import 'IVisitor.dart';

class Manager extends AbstractEmployee implements IVisitable {

  final double bonusPercentage;
  final int projectsHandled;

  const Manager(
      final String id,
      final String name,
      final double salary,
      this.bonusPercentage,
      this.projectsHandled,
      final String department,
      final int experienceYears,
      final String employmentType,
      final String email)
      : super(id, name, salary, department, experienceYears, employmentType, email);

  @override
  void accept(final IVisitor visitor) => visitor.visitManager(this);
}

class Developer extends AbstractEmployee implements IVisitable {

  const Developer(
      final String id,
      final String name,
      final double salary,
      final String department,
      final int experienceYears,
      final String employmentType,
      final String email)
      : super(id, name, salary, department, experienceYears, employmentType, email);

  @override
  void accept(final IVisitor visitor) => visitor.visitDeveloper(this);
}