
import 'IDAO.dart';
import 'Database.dart';
import 'ProductModel.dart';

class DAO implements IDAO {

  final Database _database = Database();

  @override
  bool addProduct(Product product) => _database.add(product);

  @override
  void addProducts(List<Product> products) {
    for(Product product in products) {
      _database.add(product);
    }
  }

  @override
  List<Product> readAll() => _database.readAll();

  @override
  List<Product> readBy({int? productId, String? productName, double? priceRange}) =>
      _database.read(productId: productId, productName: productName, priceRange: priceRange);

  @override
  List<Product> readById(int productId) => _database.read(productId: productId);

  @override
  List<Product> readByPriceRange(double priceRange) => _database.read(priceRange: priceRange);

  @override
  List<Product> update(int productId, {String? productName, String? description, double? price}) =>
      _database.update(productId, productName: productName, description: description, price: price);

  @override
  List<Product> updateProductName(int productId, String productName) => _database.update(productId, productName: productName);

  @override
  List<Product> updatePrice(int productId, double price) => _database.update(productId, price: price);

  @override
  bool removeProduct(int productId) => _database.remove(productId);

  @override
  void removeProducts(List<int> productIds) {
    for(int productId in productIds) {
      _database.remove(productId);
    }
  }
}