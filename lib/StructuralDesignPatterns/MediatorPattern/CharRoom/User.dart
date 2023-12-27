
import 'ChatServiceMediator.dart';
import 'AbstractUser.dart';

class User extends AbstractUser {

  User(String userName, ChatServiceMediator chatServiceMediator) : super(userName, chatServiceMediator) {
    chatServiceMediator.addUser(this);
  }

  @override
  void sendMessage(String message) {
    print('\n$userName: (Sent ->) $message');
    chatServiceMediator.sendMessage(this, message);
  }

  @override
  void receivedMessage(AbstractUser sender, String message) {
    print('$userName: (-> Received from ${sender.userName}): $message');
  }
}