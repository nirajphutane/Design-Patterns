
class GetterSingleton {

  const GetterSingleton._constructor();

  static const GetterSingleton _instance = GetterSingleton._constructor();

  static GetterSingleton get instance => _instance;

  void foo() => print('StaticFieldSingleton: Hashcode is $hashCode');
}