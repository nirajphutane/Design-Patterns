
import 'AbstractUser.dart';
import 'IChatServiceMediator.dart';

class ChatServiceMediator implements IChatServiceMediator {

  final List<AbstractUser> _users = [];

  @override
  void addUser(AbstractUser user) {
    _users.add(user);
  }

  @override
  void sendMessage(AbstractUser sender, String message) {
    for(AbstractUser iUser in _users) {
      if(iUser != sender) {
        iUser.receivedMessage(sender, message);
      }
    }
  }
}