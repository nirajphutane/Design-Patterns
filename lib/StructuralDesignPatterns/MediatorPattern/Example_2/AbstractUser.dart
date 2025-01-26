
import 'ChatServiceMediator.dart';

abstract class AbstractUser {

  final String userName;
  final ChatServiceMediator chatServiceMediator;

  const AbstractUser(this.userName, this.chatServiceMediator);

  void sendMessage(final String message);

  void receivedMessage(final AbstractUser sender, final String message);
}