
import 'Amount.dart';

abstract interface class IProcessor {

  // void nextProcess(IProcessor nextProcess);

  void process(final Amount request);
}