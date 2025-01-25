
import 'Services.dart';
import 'IService.dart';

class Cache {

  final List<IService> _services = [];

  void addService(final IService service) {
    if(!_services.contains(service)) {
      _services.add(service);
    }
  }

  IService? getService(final Services service) {
    for(final IService iService in _services) {
      if(iService.getName() == service.name) {
        return iService;
      }
    }
    return null;
  }
}