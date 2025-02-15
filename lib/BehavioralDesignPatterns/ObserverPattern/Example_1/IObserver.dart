
abstract interface class IObserver {

  void addListener(final Function observer);

  void removeListener(final Function observer);

  void removeAllListener();

  void notifyAll({final data});
}