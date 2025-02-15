
class Employee {

  late String _name;
  late String _emailId;
  String? _band;
  bool? _isManager;
  double? _salary;

  Employee._create(EmployeeBuilder builder) {
    _name = builder.name;
    _emailId = builder.emailId;
    _band = builder.band;
    _isManager = builder.isManager;
    _salary = builder.salary;
  }
  
  @override
  String toString() => 'Name: $_name\nEmailId: $_emailId\nBand: $_band'
      '\nIsManager: $_isManager\nSalary: $_salary';
}

class EmployeeBuilder {

  final String name, emailId;         // Required Parameters
  String? band;                       // Optional Parameters
  bool? isManager;                    // Optional Parameters
  double? salary;                     // Optional Parameters

  EmployeeBuilder(this.name, this.emailId);   // Pass Required Parameters through constructor

  Employee build() => Employee._create(this);
}
