
import 'AbstractGame.dart';
import 'Games.dart';

void main() {

  AbstractGame game = Cricket('Paul');
  game.play();

  game = Football('Natasha');
  game.play();
}
