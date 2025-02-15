
import 'OrderManager.dart';
import 'PaymentGateways.dart';
import 'Product.dart';

void main(final List<String> args) {
  const List<Product> products = [
    Product('11167553', 100.98),
    Product('111222256', 400.74),
  ];
  const OrderManager orderManager = OrderManager(products, CardPay('1234567890', '333'));
  orderManager.buy();

  const OrderManager(
      [
        Product('22267553', 70.32),
        Product('222111256', 54.45),
      ],
      OnlinePay('12345', '111')
  ).buy();
}