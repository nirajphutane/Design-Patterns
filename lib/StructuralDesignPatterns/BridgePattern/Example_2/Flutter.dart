
import 'IFlutterEngin.dart';

class Flutter implements IFlutterEngin {

  @override
  void initializeEngine() => print('Initializing Flutter Engine...');

  @override
  void loadAssets() => print('Loading application assets...');

  @override
  void loadFramework() => print('Loading Flutter Framework...');

  @override
  void runDartCode() => print('Running Dart code...');

  @override
  void initializeWidgetTree() => print('Initializing widget tree...');

  @override
  void setUpRenderingPipeline() => print('Setting up rendering pipeline...');

  @override
  void setupEventLoop() => print('Setting up event loop...');

  @override
  void startRenderLoop() => print('Starting main render loop...');

  @override
  void startFrameRendering() => print('Starting frame rendering...');
}