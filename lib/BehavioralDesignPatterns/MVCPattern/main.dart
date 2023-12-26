
import 'Controller.dart';
import 'Model.dart';
import 'View.dart';

void main(List<String> args) {
  Model model = Model([]);
  View view = View();

  Controller controller = Controller(model, view);

  controller.updateView();

  controller.fetchAPI();
  controller.updateView();

  controller.addItem(Item(barcode: 1777, name: 'Item-Z', quantity: 2, price: 170.99));
  controller.updateView();

  controller.removeItem(6);
  controller.updateView();

  controller.updateItem(Item(barcode: 1742, name: 'Item-D', quantity: 2, price: 373.85));
  controller.updateView();
}