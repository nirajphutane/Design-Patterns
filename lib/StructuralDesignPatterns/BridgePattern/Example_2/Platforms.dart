
import 'IPlatform.dart';

class Android extends IPlatform {

  Android(super.flutter) {
    print('\nRunning Android...');
  }
}

class IOS extends IPlatform {

  IOS(super.flutter) {
    print('\nRunning iOS...');
  }
}

class Web extends IPlatform {

  Web(super.flutter) {
    print('\nRunning Web...');
  }
}