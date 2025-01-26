
import 'APIService.dart';

class ViewModel {

  final APIService _api;
  const ViewModel(this._api);

  void connect() => _api.connect();
}