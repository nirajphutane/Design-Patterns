
import 'ISubject.dart';

class ExpensiveClass implements ISubject {

  /*This class required heavy configuration while creating a Objet instance*/
  ExpensiveClass() {
    print('$hashCode: Configuring Authentication...');
    print('$hashCode: Configuring API...');
    print('$hashCode: Configuring Database...');
  }

  @override
  void execute() => print('\n$hashCode: Process is running...');
}