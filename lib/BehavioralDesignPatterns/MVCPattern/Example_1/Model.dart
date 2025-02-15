
class Model {

  final List<Item> items;

  const Model(this.items);
}

class Item {
  final int barcode;
  final String name;
  final int quantity;
  final double price;

  const Item({
    required this.barcode,
    required this.name,
    required this.quantity,
    required this.price
  });
}