
import 'ExpensiveClass.dart';
import 'ISubject.dart';

class ExpensiveClassProxy implements ISubject {

  ExpensiveClass? _expensiveClass;

  @override
  void execute() => (_expensiveClass ??= ExpensiveClass()).execute();
}