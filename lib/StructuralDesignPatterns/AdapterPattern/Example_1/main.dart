
import 'IPhoneAdapter.dart';
import 'Mobiles.dart';
import 'AndroidCharger.dart';

void main(final List<String> args) {
  final AndroidCharger chargerSamsungGalaxyS23Ultra = AndroidCharger(SamsungGalaxyS23Ultra());
  chargerSamsungGalaxyS23Ultra.charge();
  final AndroidCharger chargerGooglePixel8Pro = AndroidCharger(GooglePixel8Pro());
  chargerGooglePixel8Pro.charge();

  AndroidCharger chargerIPhone15Pro = AndroidCharger(IPhone15ProAdapter());
  chargerIPhone15Pro.charge();
  chargerIPhone15Pro = AndroidCharger(IPhoneAdapter(IPhone15ProAdapter()));
  chargerIPhone15Pro.charge();
}