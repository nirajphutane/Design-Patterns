
import 'ICab.dart';
import 'IPassenger.dart';
import 'ICabCallCenterMediator.dart';
import 'Location.dart';

class CabCallCenterMediator implements ICabCallCenterMediator {

  final Map<String, ICab> _database = {};

  @override
  void registerCab(final ICab cab) => _database[cab.capNumber] = cab;

  @override
  void bookCab(final IPassenger passenger) {
    print('\nBooking...');
    for(final ICab cab in _database.values) {
      if(!cab.isBooked && cab.location.inRadius(passenger.location, 5)) {
        passenger.acknowledge('Dear ${passenger.name}, Your cab ${cab.capNumber} is booked and will pick up you at ${passenger.address}.');
        cab.assign('Dear Cap driver, Your cab ${cab.capNumber} is booked and the pick up point is ${passenger.address}.');
        return;
      }
    }
    passenger.acknowledge('Dear ${passenger.name}, No cab is available in your area!');
  }
}