
abstract interface class IDatabase {

  void connect();
}

class Aws implements IDatabase {

  @override
  void connect() => print('AWS DB is online!');
}

class Azure implements IDatabase {

  @override
  void connect() => print('Azure DB is online!');
}
