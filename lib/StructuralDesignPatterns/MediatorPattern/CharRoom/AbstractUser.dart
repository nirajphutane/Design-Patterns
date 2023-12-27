
import 'ChatServiceMediator.dart';

abstract class AbstractUser {

  final String userName;
  final ChatServiceMediator chatServiceMediator;

  AbstractUser(this.userName, this.chatServiceMediator);

  void sendMessage(String message);

  void receivedMessage(AbstractUser sender, String message);
}