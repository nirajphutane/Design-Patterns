
import 'Amount.dart';
import 'Processors.dart';
import 'IProcessor.dart';
import 'Util.dart';

class Chain {

  late IProcessor _iProcessor;

  Chain() {
    _iProcessor = Dispense2000Notes(Dispense500Notes(Dispense200Notes(Dispense100Notes())));
  }

  void execute(Amount amount) {
    if(amount.amount % 100 == 0) {
      print('\n\nDispensing amount of ₹ ${amount.amount}.\n');
      _iProcessor.process(amount);
      printTotal(amount.amount);
    } else {
      print('Requested amount of ₹ ${amount.amount}.');
      print('Please enter amount in multiple of 100.');
    }
  }
}