
class LazilyInitializationFactorySingleton {

  static late String _staticData;   // static String? _staticData;
  late String _instanceData;        // String? _instanceData;

  static LazilyInitializationFactorySingleton? _instance;

  LazilyInitializationFactorySingleton._constructor();

  factory LazilyInitializationFactorySingleton({String? staticData, String? instanceData}) {
    _instance ??= LazilyInitializationFactorySingleton._constructor();   // Lazily Initialization
    _staticData = staticData?? 'No static data';
    _instance!._instanceData = instanceData?? 'No instance data';
    return _instance!;
  }

  void foo() {
    print('StaticData: $_staticData');
    print('InstanceData: $_instanceData');
    print('LazilyInitializationFactorySingleton: Hashcode is $hashCode');
  }
}