
import 'DatabaseService.dart';
import 'APIService.dart';
import 'ViewModel.dart';

void main(final List<String> args) {

  ViewModel(APIService(Aws())).connect();
  ViewModel(APIService(Azure())).connect();
}