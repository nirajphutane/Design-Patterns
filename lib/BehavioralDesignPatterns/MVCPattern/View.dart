
import 'Model.dart';

class View {

  void display(List<Item> items, double total) {
    if(items.isEmpty) {
      _showMessage();
    } else {
      _showList(items, total);
    }
  }

  void _showList(List<Item> items, double total) {
    print('\n\n\t\t\t\t\t${DateTime.now()}');
    print('Items List:');
    int i = 0;
    print('Indexes\tBarcode\tItems\tQuantity\tPrice');
    print('-----------------------------------------');
    for(Item item in items) {
      print('${++i}\t\t${item.barcode}\t${item.name}\t\t${item.quantity}\t\t₹ ${item.price}');
    }
    print('-----------------------------------------');
    print('Total: $i Item(s)\t\t\t\t\t${total.toStringAsFixed(2)}');
  }

  void _showMessage() => print('\n\t\t\tData not available!!');
}