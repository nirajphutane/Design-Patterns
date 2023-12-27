
import 'IIPhoneCharger.dart';
import 'IAndroidCharger.dart';

class SamsungGalaxyS23Ultra implements IAndroidCharger {

  @override
  void typeC() {
    print('Samsung Galaxy S23 Ultra is charging...');
  }
}

class GooglePixel8Pro implements IAndroidCharger {

  @override
  void typeC() {
    print('Google Pixel 8 Pro is charging...');
  }
}

class IPhone15Pro implements IIPhoneCharger {

  @override
  void typeUSB_C() {
    print('IPhone 15 Pro is charging...');
  }
}