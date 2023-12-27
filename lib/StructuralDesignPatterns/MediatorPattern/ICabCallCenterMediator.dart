
import 'IPassenger.dart';
import 'ICab.dart';

abstract interface class ICabCallCenterMediator {

  void registerCab(ICab cab);
  void bookCab(IPassenger passenger);
}