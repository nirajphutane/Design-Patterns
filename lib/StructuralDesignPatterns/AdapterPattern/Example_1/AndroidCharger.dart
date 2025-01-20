
import 'IAndroidCharger.dart';

class AndroidCharger {

  final IAndroidCharger _androidCharger;

  AndroidCharger(this._androidCharger);

  void charge() => _androidCharger.typeC();
}