
import 'IPassenger.dart';
import 'ICab.dart';

abstract interface class ICabCallCenterMediator {

  void registerCab(final ICab cab);
  void bookCab(final IPassenger passenger);
}