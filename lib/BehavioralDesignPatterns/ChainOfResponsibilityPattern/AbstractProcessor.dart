
import 'Number.dart';

abstract class AbstractProcessor {

  AbstractProcessor? nextProcessor;

  AbstractProcessor(this.nextProcessor);

  void process(Number request) => nextProcessor?.process(request);
}