
abstract interface class IObserver {

  void addListener(Function observer);

  void removeListener(Function observer);

  void removeAllListener();

  void notifyAll({var data});
}