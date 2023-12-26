import 'States.dart';
import 'Context.dart';

void main(List<String> args) {
     Context context = Context();

     State1 state1 = State1();
     state1.setState(context);

     State2 state2 = State2();
     state2.setState(context);
 }