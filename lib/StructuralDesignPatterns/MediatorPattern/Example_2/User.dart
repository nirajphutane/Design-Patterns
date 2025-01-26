
import 'ChatServiceMediator.dart';
import 'AbstractUser.dart';

class User extends AbstractUser {

  User(final String userName, final ChatServiceMediator chatServiceMediator) : super(userName, chatServiceMediator) {
    chatServiceMediator.addUser(this);
  }

  @override
  void sendMessage(final String message) {
    print('\n$userName: (Sent ->) $message');
    chatServiceMediator.sendMessage(this, message);
  }

  @override
  void receivedMessage(final AbstractUser sender, final String message) => print('$userName: (-> Received from ${sender.userName}): $message');
}