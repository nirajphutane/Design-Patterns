import 'Util.dart';
import 'Amount.dart';
import 'IProcessor.dart';

class Dispense2000Notes implements IProcessor {
  final int note = 2000;
  final IProcessor _nextChainProcess;

  Dispense2000Notes(this._nextChainProcess);

  @override
  void process(Amount request) {
    if (request.amount >= note) {
      final (int division, int reminder) = getDivisionAndReminder(request.amount, note);
      print('$note * $division = ${note * division}');
      if (reminder != 0) {
        _nextChainProcess.process(Amount(reminder));
      }
    } else {
      _nextChainProcess.process(request);
    }
  }
}

class Dispense500Notes implements IProcessor {
  final int note = 500;
  final IProcessor _nextChainProcess;

  Dispense500Notes(this._nextChainProcess);

  @override
  void process(Amount request) {
    if (request.amount >= note) {
      final (int division, int reminder) = getDivisionAndReminder(request.amount, note);
      print(' $note * $division = ${note * division}');
      if (reminder != 0) {
        _nextChainProcess.process(Amount(reminder));
      }
    } else {
      _nextChainProcess.process(request);
    }
  }
}

class Dispense200Notes implements IProcessor {
  final int note = 200;
  final IProcessor _nextChainProcess;

  Dispense200Notes(this._nextChainProcess);

  @override
  void process(Amount request) {
    if (request.amount >= note) {
      final (int division, int reminder) = getDivisionAndReminder(request.amount, note);
      print(' $note * $division = ${note * division}');
      if (reminder != 0) {
        _nextChainProcess.process(Amount(reminder));
      }
    } else {
      _nextChainProcess.process(request);
    }
  }
}

class Dispense100Notes implements IProcessor {
  final int note = 100;

  @override
  void process(Amount request) {
    final (int division, int reminder) = getDivisionAndReminder(request.amount, note);
    print(' $note * $division = ${note * division}');
  }
}
