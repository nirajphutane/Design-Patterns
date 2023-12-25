
class StaticFieldSingleton {

  const StaticFieldSingleton._constructor();

  static const StaticFieldSingleton instance = StaticFieldSingleton._constructor();

  void foo() => print('StaticFieldSingleton: Hashcode is $hashCode');
}