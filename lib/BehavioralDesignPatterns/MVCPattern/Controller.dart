
import 'View.dart';
import 'API.dart';
import 'Model.dart';

class Controller {

  final Model model;
  final View view;

  Controller(this.model, this.view);

  void fetchAPI() {
    model.items = API().fetchAPI();
  }

  void addItem(Item newItem) => model.items.add(newItem);

  void removeItem(int index) => model.items.removeAt(index);

  void updateItem(Item newItem) {
    for(int i = 0; i < model.items.length; i++) {
      if(model.items[i].barcode == newItem.barcode) {
        model.items[i] = newItem;
        break;
      }
    }
  }

  double getTotal() {
    double total = 0;
    for(Item item in model.items) {
      total += item.price;
    }
    return total;
  }

  void updateView() => view.display(model.items, getTotal());
}