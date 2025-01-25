
import 'package:design_patterns/StructuralDesignPatterns/FacadePattern/Example_2/Facade.dart';

import 'PayGateway.dart';
import 'Product.dart';

class OrderDetails {
  final List<Product> products;
  final PayGateway payGateway;
  final String emailId;

  const OrderDetails(this.products, this.payGateway, this.emailId);
}

abstract interface class OrderPlatform {

  void buy();
}

class Amazon implements OrderPlatform {

  final OrderDetails details;
  const Amazon(this.details);

  @override
  void buy() => Facade(Platform.Amazon, details).buy();
}

class Flipkart implements OrderPlatform {

  final OrderDetails details;
  const Flipkart(this.details);

  @override
  void buy() => Facade(Platform.Flipkart, details).buy();
}

enum Platform {
  Amazon,
  Flipkart
}
