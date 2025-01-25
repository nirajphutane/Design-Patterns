
import 'OrderService.dart';
import 'PayGateway.dart';
import 'Product.dart';

void main(final List<String> args) {
  Amazon(
      OrderDetails(
        [
          Product("Laptop", 101, 999.99),
          Product("Mouse", 102, 49.99),
          Product("Keyboard", 103, 79.99)
        ],
        Card(0123456789, 123),
        'user@example.com'
      )
  ).buy();

  Flipkart(
      OrderDetails(
          [
            Product("Laptop", 101, 999.99),
            Product("Mouse", 102, 49.99),
            Product("Keyboard", 103, 79.99)
          ],
          UPI(9876543210, '123456'),
          'user@example.com'
      )
  ).buy();
}