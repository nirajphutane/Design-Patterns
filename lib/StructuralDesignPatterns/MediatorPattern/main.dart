
import 'Cabs.dart';
import 'Location.dart';
import 'Passengers.dart';
import 'CabCallCenterMediator.dart';

void main(List<String> args) {

  Cab1 cab1 = Cab1('DRS 77A3', Location(10, 20), false);
  Cab2 cab2 = Cab2('NSG 313', Location(14, 19), false);

  CabCallCenterMediator cabCallCenter = CabCallCenterMediator();
  cabCallCenter.registerCab(cab1);
  cabCallCenter.registerCab(cab2);

  Passenger1 passenger1 = Passenger1('Paul Walker', '93 NORTH 9TH STREET, BROOKLYN NY 11211', Location(12, 18));
  Passenger2 passenger2 = Passenger2('Steve Smith', '177 MAIN STREET, LITTLE TOWN NH 03561', Location(16, 21));
  Passenger3 passenger3 = Passenger3('Gareth Bale', '46 FRONT STREET, WATERVILLE, ME 04901', Location(26, 22));

  cabCallCenter.bookCab(passenger1);
  cabCallCenter.bookCab(passenger2);
  cabCallCenter.bookCab(passenger3);
}