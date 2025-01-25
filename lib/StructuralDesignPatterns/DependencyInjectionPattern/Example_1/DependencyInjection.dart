
import 'IService.dart';
import 'IConsumer.dart';

class DependencyInjection implements IConsumer {

  final IService _iService;

  const DependencyInjection(this._iService);

  @override
  void send(final String to, final String text) => _iService.send(to, text);
}