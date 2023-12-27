
import 'IAndroidCharger.dart';

class AndroidCharger {

  IAndroidCharger _androidCharger;

  AndroidCharger(this._androidCharger);

  void charge() {
    _androidCharger.typeC();
  }
}