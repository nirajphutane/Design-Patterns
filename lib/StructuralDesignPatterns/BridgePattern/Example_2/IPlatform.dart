
import 'IFlutterEngin.dart';

abstract class IPlatform {

  final IFlutterEngin flutter;
  const IPlatform(this.flutter);

  void run() {
    flutter.initializeEngine();
    flutter.loadAssets();
    flutter.loadFramework();
    flutter.runDartCode();
    flutter.initializeWidgetTree();
    flutter.setUpRenderingPipeline();
    flutter.setupEventLoop();
    flutter.startRenderLoop();
    flutter.startFrameRendering();
  }
}