
import 'Items.dart';

void main(List<String> args) {

  List<String> items = ['TV', 'Laptop', 'Mobile', 'Speaker', 'Head Phone', 'Tab'];
  Iterator<String> iterator = Iterator(items);
  while(iterator.hasNext()) {
    print(iterator.next());
  }
}