
import 'ICommand.dart';

class Invoker {

  final List<ICommand> _commands = [];

  void add(final ICommand command) => _commands.add(command);

  void run() {
    for (final ICommand command in _commands) {
      command.execute();
    }
  }
}