
import 'Context.dart';
import 'IState.dart';

class State1 implements IState {

  @override
  void setState(Context context) {
    print('Set State1.');
    context.setState = this;
  }
}

class State2 implements IState {

  @override
  void setState(Context context) {
    print('Set State2.');
    context.setState = this;
  }
}