
import 'Employees.dart';
import 'IVisitor.dart';

class SalaryReportGenerator implements IVisitor {

  const SalaryReportGenerator();

  @override
  void visitManager(final Manager manager) => print('Manager: ${manager.name} \n Total Salary: \$${(manager.salary + (manager.salary * manager.bonusPercentage / 100)).toStringAsFixed(2)} | Department: ${manager.department}');

  @override
  void visitDeveloper(final Developer developer) => print('Developer: ${developer.name} \n Total Salary: \$${(developer.salary + (developer.salary / 100)).toStringAsFixed(2)} | Department: ${developer.department}');
}

