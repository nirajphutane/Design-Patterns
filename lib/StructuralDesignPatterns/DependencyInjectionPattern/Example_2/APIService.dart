
import 'DatabaseService.dart';

class APIService {

  final IDatabase _database;
  const APIService(this._database);

  void connect() => _database.connect();
}
