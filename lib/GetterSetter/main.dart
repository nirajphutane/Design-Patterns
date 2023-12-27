
import 'GetterSetter.dart';

void main(List<String> args) {
  GetterSetter getSet = GetterSetter(10, "K");
  print(getSet.toString());
  getSet.setParamInt = 20;
  getSet.setParamString = 'M';
  print(getSet.toString());
}