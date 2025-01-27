
import 'Amount.dart';
import 'Chain.dart';

void main(final List<String> args) {
  Chain().execute(const Amount(100));

  Chain().execute(const Amount(1700));

  Chain().execute(const Amount(2700));

  Chain().execute(const Amount(6500));

  Chain().execute(const Amount(15300));
}