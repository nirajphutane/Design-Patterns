
import 'Amount.dart';
import 'Chain.dart';

void main(List<String> args) {
  Chain().execute(Amount(100));

  Chain().execute(Amount(1700));

  Chain().execute(Amount(2700));

  Chain().execute(Amount(6500));

  Chain().execute(Amount(15300));
}