
import 'AbstractUser.dart';

abstract interface class IChatServiceMediator {

  void addUser(final AbstractUser user);

  void sendMessage(final AbstractUser sender, final String message);
}