
import 'Employee.dart';

void main(List<String> args) {
  Employee employee = EmployeeBuilder('Paul Walker', 'Paul.Walker@email.com').build();
  print('\n${employee.toString()}');

  EmployeeBuilder builder = EmployeeBuilder('Steve Smith', 'Steve.Smith@email.com');
  builder.band = '7A';
  builder.isManager = false;
  employee = builder.build();
  print('\n${employee.toString()}');

  builder = EmployeeBuilder('Gareth Bale', 'Gareth.Bale@email.com');
  builder.band = '8';
  builder.isManager = true;
  builder.salary = 200000;
  employee = builder.build();
  print('\n${employee.toString()}');
}

