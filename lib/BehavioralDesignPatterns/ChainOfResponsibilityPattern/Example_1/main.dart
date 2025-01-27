
import 'Number.dart';
import 'Processors.dart';
import 'Chain.dart';

void main(final List<String> args) {

  final Chain chain = const Chain(PositiveProcessor(NegativeProcessor(ZeroProcessor(null))));
  chain.execute(const Number(7));
  chain.execute(const Number(-10));
  chain.execute(const Number(0));
}