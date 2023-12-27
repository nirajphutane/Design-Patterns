
import 'ICab.dart';
import 'IPassenger.dart';
import 'ICabCallCenterMediator.dart';
import 'Location.dart';

class CabCallCenterMediator implements ICabCallCenterMediator {

  final Map<String, ICab> database = {};

  @override
  void registerCab(ICab cab) {
    database[cab.capNumber] = cab;
  }

  @override
  void bookCab(IPassenger passenger) {
    print('\nBooking...');
    for(ICab cab in database.values) {
      if(!cab.isBooked && cab.location.inRadius(passenger.location, 5)) {
        passenger.acknowledge('Dear ${passenger.name}, Your cab ${cab.capNumber} is booked and will pick up you at ${passenger.address}.');
        cab.assign('Dear Cap driver, Your cab ${cab.capNumber} is booked and the pick up point is ${passenger.address}.');
        return;
      }
    }
    passenger.acknowledge('Dear ${passenger.name}, No cab is available in your area!');
  }
}