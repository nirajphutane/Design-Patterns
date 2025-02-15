
import 'Context.dart';
import 'IState.dart';

class State1 implements IState {

  const State1();

  @override
  void setState(final Context context) {
    print('Set State1.');
    context.setState = this;
  }
}

class State2 implements IState {

  const State2();

  @override
  void setState(final Context context) {
    print('Set State2.');
    context.setState = this;
  }
}