
import 'dart:math';
import 'IPaymentStrategy.dart';
import 'Product.dart';

class OrderManager {

  final List<Product> _products;
  final IPaymentStrategy _paymentStrategy;

  OrderManager(this._products, this._paymentStrategy);

  void buy() {
    print('\n\nBill No: ${Random().nextInt(1000000)}\n---');
    double totalAmount = 0;
    print('UPC Code\t|\tPrice');
    for(Product product in _products) {
      totalAmount += product.price.abs();
      print('${product.upcCode}\t|\t${product.price}');
    }
    print('-------------------------');
    print('Total Rs\t:\t$totalAmount');
    print('Congratulations, Your order is placed.\n${_paymentStrategy.pay(totalAmount)}');
  }
}