
import 'InitialContext.dart';
import 'Services.dart';
import 'IService.dart';
import 'Cache.dart';

class ServiceLocator {

  static final Cache _cache = Cache();

  static IService getService(final Services service) {
    IService? iService = _cache.getService(service);
    if(iService == null) {
      iService = InitialContext().lookUp(service) as IService;
      _cache.addService(iService);
    }
    return iService;
  }
}

// class ServiceLocator {
//
//   static final Cache cache = Cache();
//
//   static IService getService(final Services service) {
//     IService? iService = cache.getService(service);
//     if(iService == null) {
//       iService = InitialContext().lookUp(service) as IService;
//       cache.addService(iService);
//     }
//     return iService;
//   }
// }