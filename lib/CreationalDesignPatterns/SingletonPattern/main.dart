
import 'EagerInitializationFactorySingleton.dart';
import 'EnumSingleton.dart';
import 'GetterSingleton.dart';
import 'LazilyInitializationFactorySingleton.dart';
import 'StaticFieldSingleton.dart';

void main(List<String> args) {
  print('\n1. Enum Singleton:');
  EnumSingleton enumSingleton = EnumSingleton.getInstance();
  enumSingleton.foo();
  EnumSingleton anotherEnumSingleton = EnumSingleton.getInstance();
  anotherEnumSingleton.foo();
  print('enumSingleton: ${enumSingleton.hashCode}'
      '\nanotherEnumSingleton: ${anotherEnumSingleton.hashCode}'
      '\nenumSingleton.hashCode == anotherEnumSingleton.hashCode: ${enumSingleton.hashCode == anotherEnumSingleton.hashCode}');

  print('\n2. Eager Initialization Factory Singleton:');
  EagerInitializationFactorySingleton eagerInitializationFactorySingleton = EagerInitializationFactorySingleton();
  eagerInitializationFactorySingleton.foo();
  EagerInitializationFactorySingleton anotherEagerInitializationFactorySingleton = EagerInitializationFactorySingleton(
    staticData: 'Set to Static Data',
    instanceData: 'Set to Instance Data'
  );
  anotherEagerInitializationFactorySingleton.foo();
  print('eagerInitializationFactorySingleton: ${eagerInitializationFactorySingleton.hashCode}'
      '\nanotherEagerInitializationFactorySingleton: ${anotherEagerInitializationFactorySingleton.hashCode}'
      '\neagerInitializationFactorySingleton.hashCode == anotherEagerInitializationFactorySingleton.hashCode: ${eagerInitializationFactorySingleton.hashCode == anotherEagerInitializationFactorySingleton.hashCode}');

  print('\n3. Lazily Initialization Factory Singleton:');
  LazilyInitializationFactorySingleton lazilyInitializationFactorySingleton = LazilyInitializationFactorySingleton();
  lazilyInitializationFactorySingleton.foo();
  LazilyInitializationFactorySingleton anotherLazilyInitializationFactorySingleton = LazilyInitializationFactorySingleton(
      staticData: 'Set to Static Data',
      instanceData: 'Set to Instance Data'
  );
  anotherLazilyInitializationFactorySingleton.foo();
  print('lazilyInitializationFactorySingleton: ${lazilyInitializationFactorySingleton.hashCode}'
      '\nanotherLazilyInitializationFactorySingleton: ${anotherLazilyInitializationFactorySingleton.hashCode}'
      '\nlazilyInitializationFactorySingleton.hashCode == anotherLazilyInitializationFactorySingleton.hashCode: ${lazilyInitializationFactorySingleton.hashCode == anotherLazilyInitializationFactorySingleton.hashCode}');

  print('\n4. Getter Singleton:');
  GetterSingleton getterSingleton = GetterSingleton.instance;
  getterSingleton.foo();
  GetterSingleton anotherGetterSingleton = GetterSingleton.instance;
  anotherGetterSingleton.foo();
  print('getterSingleton: ${getterSingleton.hashCode}'
      '\nanotherGetterSingleton: ${anotherGetterSingleton.hashCode}'
      '\ngetterSingleton.hashCode == anotherGetterSingleton.hashCode: ${getterSingleton.hashCode == anotherGetterSingleton.hashCode}');

  print('\n5. Static Field Singleton:');
  StaticFieldSingleton staticFieldSingleton = StaticFieldSingleton.instance;
  staticFieldSingleton.foo();
  StaticFieldSingleton anotherStaticFieldSingleton = StaticFieldSingleton.instance;
  anotherStaticFieldSingleton.foo();
  print('staticFieldSingleton: ${staticFieldSingleton.hashCode}'
      '\nanotherStaticFieldSingleton: ${anotherStaticFieldSingleton.hashCode}'
      '\nstaticFieldSingleton.hashCode == anotherStaticFieldSingleton.hashCode: ${staticFieldSingleton.hashCode == anotherStaticFieldSingleton.hashCode}');

}