import 'States.dart';
import 'Context.dart';

void main(final List<String> args) {
     Context context = Context();

     const State1 state1 = State1();
     state1.setState(context);

     const State2 state2 = State2();
     state2.setState(context);
 }