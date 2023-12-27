
import 'ProductModel.dart';
import 'IDAO.dart';
import 'DAO.dart';

void main(List<String> args) {
  IDAO dao = DAO();
  printProduct(dao.readAll());
  dao.addProduct(Product(productId: 70701, product: 'NewProduct-A', description: 'NewProduct-A', price: 100.10));
  printProduct(dao.readById(70701));
  dao.updatePrice(70075, 100.00);
  dao.update(70076, productName: 'Product-GG', price: 120.00);
  dao.update(70077, productName: 'Product-HH', price: 127.00);
  dao.update(70078, productName: 'Product-II', price: 150.00);
  dao.update(70079, productName: 'Product-JJ', price: 140.00);
  printProduct(dao.readByPriceRange(100));
  dao.addProducts([
    Product(productId: 70702, product: 'NewProduct-B', description: 'NewProduct-BB', price: 635.63),
    Product(productId: 70703, product: 'NewProduct-C', description: 'NewProduct-CC', price: 856.52)
  ]);
  printProduct(dao.readById(70702));
  printProduct(dao.readById(70703));
  printProduct(dao.readAll());
  dao.removeProducts([70702, 70703]);
  printProduct(dao.readAll());
}

void printProduct(List<Product> products) {
  print('\nProduct Table:');
  print('ID\tProductId\tProductName\t\tDescription\t\t\t\t\t\t\t\tPrice');
  int i = 0;
  for(Product product in products) {
    i++;
    print('${product.id}\t\t${product.productId}\t${product.product}\t\t${product.description}\t${product.price}');
  }
  print('Total records: $i');
}