
import 'Number.dart';

abstract class AbstractProcessor {

  final AbstractProcessor? nextProcessor;

  const AbstractProcessor(this.nextProcessor);

  void process(final Number request) => nextProcessor?.process(request);
}