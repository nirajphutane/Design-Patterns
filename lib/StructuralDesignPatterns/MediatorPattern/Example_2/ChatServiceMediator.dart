
import 'AbstractUser.dart';
import 'IChatServiceMediator.dart';

class ChatServiceMediator implements IChatServiceMediator {

  final List<AbstractUser> _users = [];

  @override
  void addUser(final AbstractUser user) => _users.add(user);

  @override
  void sendMessage(final AbstractUser sender, final String message) {
    for(final AbstractUser iUser in _users) {
      if(iUser != sender) {
        iUser.receivedMessage(sender, message);
      }
    }
  }
}