
import 'IDAO.dart';
import 'Database.dart';
import 'ProductModel.dart';

class DAO implements IDAO {

  final Database _database = Database();

  @override
  bool addProduct(final Product product) => _database.add(product);

  @override
  void addProducts(final List<Product> products) {
    for(Product product in products) {
      _database.add(product);
    }
  }

  @override
  List<Product> readAll() => _database.readAll();

  @override
  List<Product> readBy({final int? productId, final String? productName, final double? priceRange}) =>
      _database.read(productId: productId, productName: productName, priceRange: priceRange);

  @override
  List<Product> readById(final int productId) => _database.read(productId: productId);

  @override
  List<Product> readByPriceRange(final double priceRange) => _database.read(priceRange: priceRange);

  @override
  List<Product> update(final int productId, {final String? productName, final String? description, final double? price}) =>
      _database.update(productId, productName: productName, description: description, price: price);

  @override
  List<Product> updateProductName(final int productId, final String productName) => _database.update(productId, productName: productName);

  @override
  List<Product> updatePrice(final int productId, final double price) => _database.update(productId, price: price);

  @override
  bool removeProduct(final int productId) => _database.remove(productId);

  @override
  void removeProducts(final List<int> productIds) {
    for(int productId in productIds) {
      _database.remove(productId);
    }
  }
}