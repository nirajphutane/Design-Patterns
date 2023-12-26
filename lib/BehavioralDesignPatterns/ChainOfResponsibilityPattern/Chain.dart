
import 'AbstractProcessor.dart';
import 'Number.dart';

class Chain {

  AbstractProcessor chainOfProcessor;

  Chain(this.chainOfProcessor);

  void execute(Number request) {
    chainOfProcessor.process(request);
  }
}