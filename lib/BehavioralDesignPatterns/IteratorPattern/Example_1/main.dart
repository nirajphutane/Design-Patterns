
import 'Items.dart';

void main(final List<String> args) {

  final List<String> items = ['TV', 'Laptop', 'Mobile', 'Speaker', 'Head Phone', 'Tab'];
  final Iterator<String> iterator = Iterator(items);
  while(iterator.hasNext()) {
    print(iterator.next());
  }
}