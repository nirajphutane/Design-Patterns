
import 'IPhoneAdapter.dart';
import 'Mobiles.dart';
import 'AndroidCharger.dart';

void main(List<String> args) {
  AndroidCharger chargerSamsungGalaxyS23Ultra = AndroidCharger(SamsungGalaxyS23Ultra());
  chargerSamsungGalaxyS23Ultra.charge();
  AndroidCharger chargerGooglePixel8Pro = AndroidCharger(GooglePixel8Pro());
  chargerGooglePixel8Pro.charge();
  AndroidCharger chargerIPhone15Pro = AndroidCharger(IPhone15ProAdapter());
  chargerIPhone15Pro.charge();
  chargerIPhone15Pro = AndroidCharger(IPhoneAdapter(IPhone15ProAdapter()));
  chargerIPhone15Pro.charge();
}