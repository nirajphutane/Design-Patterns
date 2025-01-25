
import 'EmailAdapter.dart';
import 'OrderService.dart';
import 'Invoice.dart';

abstract interface class IOrderManager {

  InvoiceDetails generateInvoice(final Invoice invoice);
  void makePayment(final OrderDetails details, final double amount);
  void sendEmail(final EmailAdapter adapter);
}

class OrderManager implements IOrderManager {

  @override
  InvoiceDetails generateInvoice(final Invoice invoice) => invoice.generate();

  @override
  void makePayment(final OrderDetails details, final double amount) => details.payGateway.pay(amount);

  @override
  void sendEmail(final EmailAdapter adapter) => adapter.send();
}