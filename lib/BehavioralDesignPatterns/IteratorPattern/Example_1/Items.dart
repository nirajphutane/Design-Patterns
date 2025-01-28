
import 'IIterator.dart';

class Iterator<T> implements IIterator<T> {

  int index = 0;
  final List<T> items;

  Iterator(this.items);

  @override
  bool hasNext() => index < items.length;

  @override
  T? next() {
    if(hasNext()) {
      return items[index++];
    }
    return null;
  }
}