
abstract interface class IWidget {

  void render();
}

abstract interface class SingleChildWidget extends IWidget { }

abstract interface class MultiChildWidget  extends IWidget { }