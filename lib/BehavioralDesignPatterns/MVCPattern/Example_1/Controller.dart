
import 'View.dart';
import 'API.dart';
import 'Model.dart';

class Controller {

  Model _model;
  final View view;

  Controller(this._model, this.view);

  void fetchAPI() {
    _model = Model(API().fetchAPI());
  }

  void addItem(final Item newItem) => _model.items.add(newItem);

  void removeItem(final int index) => _model.items.removeAt(index);

  void updateItem(final Item newItem) {
    for(int i = 0; i < _model.items.length; i++) {
      if(_model.items[i].barcode == newItem.barcode) {
        _model.items[i] = newItem;
        break;
      }
    }
  }

  double getTotal() => _model.items.fold<double>(0, (value, element) => element.price + value);

  void updateView() => view.display(_model.items, getTotal());
}