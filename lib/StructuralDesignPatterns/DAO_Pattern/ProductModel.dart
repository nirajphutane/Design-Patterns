
class Product {

  int? id;
  final int productId;
  String product;
  String? description;
  double price;

  Product({
    this.id,
    required this.productId,
    required this.product,
    this.description,
    required this.price
  });
}