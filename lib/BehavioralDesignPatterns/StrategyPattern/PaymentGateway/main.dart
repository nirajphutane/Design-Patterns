
import 'OrderManager.dart';
import 'PaymentGateways.dart';
import 'Product.dart';

void main(List<String> args) {
  List<Product> products = [
    Product('11167553', 100.98),
    Product('111222256', 400.74),
  ];
  OrderManager orderManager = OrderManager(products, CardPay('1234567890', '333'));
  orderManager.buy();

  products = [
    Product('22267553', 70.32),
    Product('222111256', 54.45),
  ];
  orderManager = OrderManager(products, OnlinePay('12345', '111'));
  orderManager.buy();
}