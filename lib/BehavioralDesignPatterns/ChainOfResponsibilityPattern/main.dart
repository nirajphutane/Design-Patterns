
import 'Number.dart';
import 'Processors.dart';
import 'Chain.dart';

void main(List<String> args) {

  Chain chain = Chain(PositiveProcessor(NegativeProcessor(ZeroProcessor(null))));
  chain.execute(Number(7));
  chain.execute(Number(-10));
  chain.execute(Number(0));
}