
import 'ICommand.dart';
import 'MultiColorLight.dart';

class TurnOnCommand implements ICommand {

  final MultiColorLight light;

  const TurnOnCommand(this.light);

  @override
  void execute() => light.turnOn();

}

class TurnOffCommand implements ICommand {

  final MultiColorLight light;

  const TurnOffCommand(this.light);

  @override
  void execute() => light.turnOff();

}

class SetColorCommand implements ICommand {

  final MultiColorLight light;
  final String color;

  const SetColorCommand(this.light, this.color);

  @override
  void execute() => light.setColor(color);
}