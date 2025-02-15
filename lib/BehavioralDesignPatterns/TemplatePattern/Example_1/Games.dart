
import 'AbstractGame.dart';

class Cricket extends AbstractGame {

  const Cricket(super.playerName);

  @override
  void initialize() => print('Initialize Cricket');

  @override
  void start() => print('Start Cricket');

  @override
  void end() => print('End Cricket');
}

class Football extends AbstractGame {

  const Football(super.playerName);

  @override
  void initialize() => print('Initialize Football');

  @override
  void start() => print('Start Football');

  @override
  void end() => print('End Football');
}