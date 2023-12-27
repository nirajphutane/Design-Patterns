
import 'Services.dart';
import 'IService.dart';

class Cache {

  final List<IService> _services = [];

  void addService(IService service) {
    if(!_services.contains(service)) {
      _services.add(service);
    }
  }

  IService? getService(Services service) {
    for(IService iService in _services) {
      if(iService.getName() == service.name) {
        return iService;
      }
    }
    return null;
  }
}