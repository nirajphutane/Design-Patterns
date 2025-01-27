
import 'Commands.dart';
import 'Invoker.dart';
import 'MultiColorLight.dart';

void main(final List<String> args) {

  final MultiColorLight light = MultiColorLight();

  final Invoker switcher = Invoker();
  switcher.addCommand(TurnOnCommand(light));
  switcher.addCommand(SetColorCommand(light, 'Green'));
  switcher.addCommand(SetColorCommand(light, 'Red'));
  switcher.addCommand(SetColorCommand(light, 'Orange'));
  switcher.addCommand(TurnOffCommand(light));
  switcher.addCommand(SetColorCommand(light, 'Yellow'));

  try {
    switcher.executeAllCommands();
  } catch(e) {
    print(e.toString());
  }
}