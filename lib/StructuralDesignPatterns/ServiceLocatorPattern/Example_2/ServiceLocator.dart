
class ServiceLocator {

  ServiceLocator._();

  static ServiceLocator? _instance;
  static ServiceLocator get instance {
    _instance = _instance?? ServiceLocator._();
    return _instance!;
  }

  final Map<Type, dynamic> _services = {};

  void register<T>(final T service) {
    if (_services.containsKey(T)) {
      throw Exception('Service of type $T is already registered.');
    }
    _services[T] = service;
  }

  get<T>() => _services[T];
}