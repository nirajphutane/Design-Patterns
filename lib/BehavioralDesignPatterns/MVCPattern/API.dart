
import 'Model.dart';

class API {

  final List<Item> _items = [
    Item(barcode: 1740, name: 'Item-A', quantity: 2, price: 40.98),
    Item(barcode: 1741, name: 'Item-Q', quantity: 1, price: 70.34),
    Item(barcode: 1742, name: 'Item-D', quantity: 3, price: 560.78),
    Item(barcode: 1743, name: 'Item-S', quantity: 7, price: 4923.24),
    Item(barcode: 1744, name: 'Item-K', quantity: 30, price: 4783.51),
    Item(barcode: 1745, name: 'Item-T', quantity: 4, price: 63.69),
    Item(barcode: 1746, name: 'Item-B', quantity: 5, price: 987.35),
  ];

  List<Item> fetchAPI() => _items;
}