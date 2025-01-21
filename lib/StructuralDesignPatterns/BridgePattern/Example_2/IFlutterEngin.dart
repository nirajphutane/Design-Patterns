
abstract interface class IFlutterEngin {
  void initializeEngine();
  void loadAssets();
  void loadFramework();
  void runDartCode();
  void initializeWidgetTree();
  void setUpRenderingPipeline();
  void setupEventLoop();
  void startRenderLoop();
  void startFrameRendering();
}