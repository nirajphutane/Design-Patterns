
import 'IState.dart';

class Context {
  IState? _state;
  get getState => _state;
  set setState(final IState state) {
    _state = state;
    _action();
  }

  void _action() => print(_state);
}