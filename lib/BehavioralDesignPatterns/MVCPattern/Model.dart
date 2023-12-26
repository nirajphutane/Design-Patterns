
class Model {

  List<Item> items;

  Model(this.items);
}

class Item {
  late int barcode;
  late String name;
  late int quantity;
  late double price;

  Item({
    required this.barcode,
    required this.name,
    required this.quantity,
    required this.price
  });
}