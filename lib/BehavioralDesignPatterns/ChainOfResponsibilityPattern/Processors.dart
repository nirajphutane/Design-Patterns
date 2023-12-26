
import 'Number.dart';
import 'AbstractProcessor.dart';

class PositiveProcessor extends AbstractProcessor {

  PositiveProcessor(super.nextProcessor);

  @override
  void process(Number request) {
    if(request.number > 0) {
      print('Number ${request.number} is Positive.');
    } else {
      super.process(request);
    }
  }
}

class ZeroProcessor extends AbstractProcessor {

  ZeroProcessor(super.nextProcessor);

  @override
  void process(Number request) {
    if(request.number == 0) {
      print('Number ${request.number} is Zero.');
    } else {
      super.process(request);
    }
  }
}

class NegativeProcessor extends AbstractProcessor {

  NegativeProcessor(super.nextProcessor);

  @override
  void process(Number request) {
    if(request.number < 0) {
      print('Number ${request.number} is Negative.');
    } else {
      super.process(request);
    }
  }
}