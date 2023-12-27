
import 'AbstractUser.dart';

abstract interface class IChatServiceMediator {

  void addUser(AbstractUser user);

  void sendMessage(AbstractUser sender, String message);
}