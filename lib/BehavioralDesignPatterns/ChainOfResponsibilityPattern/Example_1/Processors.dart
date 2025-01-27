
import 'Number.dart';
import 'AbstractProcessor.dart';

class PositiveProcessor extends AbstractProcessor {

  const PositiveProcessor(super.nextProcessor);

  @override
  void process(final Number request) {
    if(request.number > 0) {
      print('Number ${request.number} is Positive.');
    } else {
      super.process(request);
    }
  }
}

class ZeroProcessor extends AbstractProcessor {

  const ZeroProcessor(super.nextProcessor);

  @override
  void process(final Number request) {
    if(request.number == 0) {
      print('Number ${request.number} is Zero.');
    } else {
      super.process(request);
    }
  }
}

class NegativeProcessor extends AbstractProcessor {

  const NegativeProcessor(super.nextProcessor);

  @override
  void process(final Number request) {
    if(request.number < 0) {
      print('Number ${request.number} is Negative.');
    } else {
      super.process(request);
    }
  }
}