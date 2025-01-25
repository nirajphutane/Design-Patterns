
import 'ProductModel.dart';

abstract interface class IDAO {

  bool addProduct(final Product product);

  void addProducts(final List<Product> products);

  List<Product> readAll();

  List<Product> readBy({final int? productId, final String? productName, final double? priceRange});

  List<Product> readById(final int productId);

  List<Product> readByPriceRange(final double priceRange);

  List<Product> update(final int productId, {final String? productName, final String? description, final double? price});

  List<Product> updateProductName(final int productId, final String productName);

  List<Product> updatePrice(final int productId, final double price);

  bool removeProduct(final int productId);

  void removeProducts(final List<int> productIds);
}