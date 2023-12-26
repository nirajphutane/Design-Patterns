
import 'ICommand.dart';

class Invoker {

  final List<ICommand> commands = [];

  void addCommand(ICommand command) {
    commands.add(command);
  }

  void executeAllCommands() {
    for(ICommand command in commands) {
      command.execute();
    }
  }
}