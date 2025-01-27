
import 'ICommand.dart';

class Invoker {

  final List<ICommand> _commands = [];

  void addCommand(final ICommand command) => _commands.add(command);

  void executeAllCommands() {
    for(final ICommand command in _commands) {
      command.execute();
    }
  }
}