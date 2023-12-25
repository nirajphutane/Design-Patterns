
enum EnumSingleton {

  _instance;

  static EnumSingleton getInstance() => _instance;

  void foo() => print('EnumSingleton: Hashcode is $hashCode');
}