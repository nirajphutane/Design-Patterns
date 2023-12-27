
import 'ProductModel.dart';

abstract interface class IDAO {

  bool addProduct(Product product);

  void addProducts(List<Product> products);

  List<Product> readAll();

  List<Product> readBy({int? productId, String? productName, double? priceRange});

  List<Product> readById(int productId);

  List<Product> readByPriceRange(double priceRange);

  List<Product> update(int productId, {String? productName, String? description, double? price});

  List<Product> updateProductName(int productId, String productName);

  List<Product> updatePrice(int productId, double price);

  bool removeProduct(int productId);

  void removeProducts(List<int> productIds);
}