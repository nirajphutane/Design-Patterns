
class EagerInitializationFactorySingleton {

  static late String _staticData;   // static String? _staticData;
  late String _instanceData;        // String? _instanceData;

  EagerInitializationFactorySingleton._constructor();

  static final EagerInitializationFactorySingleton _instance = EagerInitializationFactorySingleton._constructor();  // Eager Initialization

  factory EagerInitializationFactorySingleton({String? staticData, String? instanceData}) {
    _staticData = staticData?? 'No static data';
    _instance._instanceData = instanceData?? 'No instance data';
    return _instance;
  }

  void foo() {
    print('StaticData: $_staticData');
    print('InstanceData: $_instanceData');
    print('EagerInitializationFactorySingleton: Hashcode is $hashCode');
  }
}