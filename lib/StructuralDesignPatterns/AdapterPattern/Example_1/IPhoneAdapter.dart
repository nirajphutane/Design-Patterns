
import 'IAndroidCharger.dart';
import 'Mobiles.dart';

// Class Adapter - This form uses Inheritance and extends the source interface.
class IPhone15ProAdapter extends IPhone15Pro implements IAndroidCharger {

  @override
  void typeC() => typeG();
}

// Object Adapter - This form uses Composition and adapter contains the source object.
class IPhoneAdapter implements IAndroidCharger {

  IPhone15Pro iPhone15Pro;

  IPhoneAdapter(this.iPhone15Pro);

  @override
  void typeC() => iPhone15Pro.typeG();
}