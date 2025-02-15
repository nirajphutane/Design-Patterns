
class Product {

  final String _upcCode;
  final double _price;

  const Product(this._upcCode, this._price);

  String get upcCode => _upcCode;
  double get price => _price;
}