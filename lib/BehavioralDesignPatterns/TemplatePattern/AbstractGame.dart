
import 'package:meta/meta.dart';

abstract class AbstractGame {

  String playerName;
  AbstractGame(this.playerName);

  void initialize();
  void start();
  void end();

  //Template pattern or Template method
  @nonVirtual   // final keyword
  void play() {
    print('\nPlayer: $playerName');
    initialize();
    start();
    end();
  }
}