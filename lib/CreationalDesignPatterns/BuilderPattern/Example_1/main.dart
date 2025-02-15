
import 'Employee.dart';

void main(final List<String> args) {
  final Employee paulWalker = EmployeeBuilder('Paul Walker', 'Paul.Walker@email.com').build();
  print('\n${paulWalker.toString()}');

  final EmployeeBuilder builder = EmployeeBuilder('Steve Smith', 'Steve.Smith@email.com');
  builder.band = '7A';
  builder.isManager = false;
  final Employee steveSmith = builder.build();
  print('\n${steveSmith.toString()}');

  final EmployeeBuilder employeeBuilder = EmployeeBuilder('Gareth Bale', 'Gareth.Bale@email.com');
  employeeBuilder.band = '8';
  employeeBuilder.isManager = true;
  employeeBuilder.salary = 200000;
  print('\n${employeeBuilder.build().toString()}');
}

