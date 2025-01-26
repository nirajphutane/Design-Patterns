
import 'FetchAPI.dart';
import 'ResponseModel.dart';
import 'IFetchAPI.dart';

class APIProxy implements IFetchAPI {

  final APIService _api;
  final Map<String, ResponseModel> _map = {};

  APIProxy(this._api);

  @override
  Future<ResponseModel> fetch(final String url) async {
    print('\nURL: $url');
    if(!_map.containsKey(url)) {
      print('Fetching data from URL:');
      _map[url] = await _api.fetch(url);
      return _map[url]!;
    }
    print('Fetching data from cache:');
    return _map[url]!;
  }
}