
import 'Flutter.dart';
import 'IFlutterEngin.dart';
import 'Platforms.dart';

void main(final List<String> args) {

  final IFlutterEngin flutterEngin = Flutter();

  final Android android = Android(flutterEngin);
  android.run();

  final IOS iOS = IOS(flutterEngin);
  iOS.run();

  final Web web = Web(flutterEngin);
  web.run();
}