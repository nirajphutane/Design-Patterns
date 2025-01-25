
import 'package:design_patterns/StructuralDesignPatterns/FacadePattern/Example_2/EmailAdapter.dart';
import 'package:design_patterns/StructuralDesignPatterns/FacadePattern/Example_2/PayGateway.dart';

import 'Invoice.dart';
import 'OrderManager.dart';
import 'OrderService.dart';

abstract interface class IFacade {
  void buy();
}

class Facade implements IFacade {

  final Platform _platform;
  final OrderDetails _details;
  const Facade(this._platform, this._details);

  @override
  void buy() {
    final InvoiceDetails details = OrderManager().generateInvoice(Invoice(_details.products));
    _details.payGateway.pay(details.amount);
    EmailAdapter(_platform, _details.emailId, details).send();
  }
}