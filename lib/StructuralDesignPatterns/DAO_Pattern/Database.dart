
import 'ProductModel.dart';

class Database {

  final String product = 'Product';
  final String description = 'Product';
  final String id = 'ID';
  final String price = 'Price';
  final String productId = 'ProductId';

  final List<Product> _data = [
    Product(id: 0, productId: 70070, product: 'Product-A', description: 'This is the description of Product-A', price: 8273.38),
    Product(id: 1, productId: 70071, product: 'Product-B', description: 'This is the description of Product-B', price: 4971.84),
    Product(id: 2, productId: 70072, product: 'Product-C', description: 'This is the description of Product-C', price: 1217.79),
    Product(id: 3, productId: 70073, product: 'Product-D', description: 'This is the description of Product-D', price: 7327.2),
    Product(id: 4, productId: 70074, product: 'Product-E', description: 'This is the description of Product-E', price: 6030.4),
    Product(id: 5, productId: 70075, product: 'Product-F', description: 'This is the description of Product-F', price: 6675.5),
    Product(id: 6, productId: 70076, product: 'Product-G', description: 'This is the description of Product-G', price: 1663.13),
    Product(id: 7, productId: 70077, product: 'Product-H', description: 'This is the description of Product-H', price: 40.56),
    Product(id: 8, productId: 70078, product: 'Product-I', description: 'This is the description of Product-I', price: 5171.55),
    Product(id: 9, productId: 70079, product: 'Product-J', description: 'This is the description of Product-J', price: 9529.5),
    Product(id: 10, productId: 70080, product: 'Product-K', description: 'This is the description of Product-K', price: 8215.19),
    Product(id: 11, productId: 70081, product: 'Product-L', description: 'This is the description of Product-L', price: 2601.51),
    Product(id: 12, productId: 70082, product: 'Product-M', description: 'This is the description of Product-M', price: 5935.38),
    Product(id: 13, productId: 70083, product: 'Product-N', description: 'This is the description of Product-N', price: 9229.24),
    Product(id: 14, productId: 70084, product: 'Product-O', description: 'This is the description of Product-O', price: 3622.64),
    Product(id: 15, productId: 70085, product: 'Product-P', description: 'This is the description of Product-P', price: 4616.37),
    Product(id: 16, productId: 70086, product: 'Product-Q', description: 'This is the description of Product-Q', price: 7220.45),
    Product(id: 17, productId: 70087, product: 'Product-R', description: 'This is the description of Product-R', price: 6641.0),
    Product(id: 18, productId: 70088, product: 'Product-S', description: 'This is the description of Product-S', price: 7618.27),
    Product(id: 19, productId: 70089, product: 'Product-T', description: 'This is the description of Product-T', price: 4865.45),
    Product(id: 20, productId: 70090, product: 'Product-U', description: 'This is the description of Product-U', price: 7378.66),
    Product(id: 21, productId: 70091, product: 'Product-V', description: 'This is the description of Product-V', price: 5054.98),
    Product(id: 22, productId: 70092, product: 'Product-W', description: 'This is the description of Product-W', price: 9087.38),
    Product(id: 23, productId: 70093, product: 'Product-X', description: 'This is the description of Product-X', price: 56.8),
    Product(id: 24, productId: 70094, product: 'Product-Y', description: 'This is the description of Product-Y', price: 6170.67),
    Product(id: 25, productId: 70095, product: 'Product-Z', description: 'This is the description of Product-Z', price: 8808.24)
  ];

  int _index = 0;

  Database() {
    _index = _data.length;
  }

  bool add(Product product) {
    product.id = ++_index;
    _data.add(product);
    return true;
  }

  List<Product> readAll() => _data;

  List<Product> read({int? productId, String? productName, double? priceRange}) {
    List<Product> data = [];
    for(Product product in _data) {
      if(productId != null && productId == product.productId) {
        data.add(product);
      }
      if(productName != null && product.product.startsWith(productName)) {
        data.add(product);
      }
      if(priceRange != null && ((priceRange - 50) <= product.price && product.price <= (priceRange + 50))) {
        data.add(product);
      }
    }
    return data;
  }

  List<Product> update(int productId, {String? productName, String? description, double? price}) {
    for(int i = 0; i < _data.length; i++) {
      if(_data[i].productId == productId) {
        if(productName != null) {
          _data[i].product = productName;
        }
        if(description != null) {
          _data[i].description = description;
        }
        if(price != null) {
          _data[i].price = price;
        }
      }
    }
    return _data;
  }

  bool remove(int productId) {
    for(int i = 0; i < _data.length; i++) {
      if(_data[i].productId == productId) {
        _data.removeAt(i);
        return true;
      }
    }
    return false;
  }
}