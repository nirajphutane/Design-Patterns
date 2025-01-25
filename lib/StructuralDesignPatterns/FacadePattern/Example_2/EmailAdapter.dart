
import 'EmailService.dart';
import 'Invoice.dart';
import 'OrderService.dart';

class EmailAdapter implements IEmailService {

  final Platform _platform;
  final String _to;
  final InvoiceDetails _details;

  const EmailAdapter(this._platform, this._to, this._details);

  @override
  void send() => EmailService(Email(_to, 'Your ${_platform.name} is confirmed.', _details.toString())).send();
}