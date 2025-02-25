
import 'Employees.dart';
import 'IVisitable.dart';
import 'Visitors.dart';

void main(final List<String> args) {

  final List<IVisitable> employees = [
    Manager("M001", "Alice", 80000, 10, 5, "Management", 15, "Full-Time", "alice@company.com"),
    Developer("D001", "Bob", 60000, "Engineering", 8, "Full-Time", "bob@company.com"),
  ];

  for (final employee in employees) {
    employee.accept(const SalaryReportGenerator());
  }
}