
import 'Adapter.dart';
import 'SQLDatabase.dart';

void main(final List<String> args) {

  final ISQLDatabase oldDatabase = SQLDatabase('Pune', 12.97, 77.59, 25.0, 23.0, 72.3);
  oldDatabase.save();

  final WeatherDatabaseAdapter adapter = WeatherDatabaseAdapter(oldDatabase);
  adapter.store();
}