
import 'AbstractProcessor.dart';
import 'Number.dart';

class Chain {

  final AbstractProcessor chainOfProcessor;

  const Chain(this.chainOfProcessor);

  void execute(final Number request) => chainOfProcessor.process(request);
}