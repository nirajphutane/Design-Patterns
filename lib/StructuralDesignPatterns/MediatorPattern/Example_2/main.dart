
import 'ChatServiceMediator.dart';
import 'AbstractUser.dart';
import 'User.dart';

void main(final List<String> args) {

  final ChatServiceMediator mediator = ChatServiceMediator();

  final AbstractUser user1 = User('Daphne', mediator);
  final AbstractUser user2 = User('Fred', mediator);
  final AbstractUser user3 = User('Rose', mediator);

  user1.sendMessage('You sure picked a spooky day to go boating, Freddy.');
  user2.sendMessage('Well it did not start out that way. What could have hap-pened?');
  user3.sendMessage('It is very simple. When the barometric pressure dropped, and the warm offshore air came in contact with an inland cold front, we ran into some unnavigable mugila-tion.');
  user2.sendMessage('You are right, Rose. Whatever you said.');
  user3.sendMessage('I said, we are lost in the fog.');
}