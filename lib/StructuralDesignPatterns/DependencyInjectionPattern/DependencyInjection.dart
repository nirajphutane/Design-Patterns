
import 'IService.dart';
import 'IConsumer.dart';

class DependencyInjection implements IConsumer {

  final IService _iService;

  DependencyInjection(this._iService);

  @override
  void send(String to, String text) {
    _iService.send(to, text);
  }
}