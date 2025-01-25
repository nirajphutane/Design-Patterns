
import 'dart:math';
import 'Product.dart';

abstract interface class IInvoice {

  final List<Product> products;

  const IInvoice(this.products);

  InvoiceDetails generate();

  int get invoiceNumber {
    int number = 0;
    for (int i = 0; i < 10; i++) {
      number = number * 10 + Random.secure().nextInt(9);
    }
    return number;
  }
}

class InvoiceDetails {
  final int invoiceNumber;
  final List<Product> _products;

  const InvoiceDetails(this.invoiceNumber, this._products);

  @override
  String toString() {
    final StringBuffer buffer = StringBuffer();

    buffer.writeln("Invoice Number: $invoiceNumber");
    buffer.writeln("=".padRight(40, '='));
    buffer.writeln("Product          |  Id |    Price");
    buffer.writeln("-".padRight(40, '-'));

    for (var product in _products) {
      buffer.writeln(
          '${product.product.padRight(16)}| ${product.id.toString().padRight(3)}| \$${product.prize.toStringAsFixed(2).padLeft(8)}');
    }

    buffer.writeln("-".padRight(40, '-'));
    buffer.writeln("Total Amount: \$${amount.toStringAsFixed(2).padLeft(8)}");
    return buffer.toString();
  }

  double get amount => _products.fold(0, (total, product) => total + product.prize);
}

class Invoice extends IInvoice {

  const Invoice(super.products);

  @override
  InvoiceDetails generate() => InvoiceDetails(invoiceNumber, products);
}