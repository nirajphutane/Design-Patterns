
import 'package:design_patterns/StructuralDesignPatterns/ProxyPattern/APIService.dart';
import 'package:design_patterns/StructuralDesignPatterns/ProxyPattern/FetchAPI.dart';
import 'package:design_patterns/StructuralDesignPatterns/ProxyPattern/ResponseModel.dart';

import 'ExpensiveCLassProxy.dart';
import 'UPIProxy.dart';

void main(final List<String> args) {
  print('1. Example:- Expensive Object:');
  final ExpensiveClassProxy expensiveClassProxy = ExpensiveClassProxy();
  expensiveClassProxy.execute();
  expensiveClassProxy.execute();

  print('\n');
  print('2. Example:- Authentication:');
  try{
    UPIProxy upiProxy = UPIProxy(1234);
    upiProxy.pay(100);

    upiProxy = UPIProxy(4321);
    upiProxy.pay(200);
  } catch(error) {
    print(error);
  }

  cache();
}

void cache() async {
  print('\n');
  print('3. Example:- Cache:');
  final APIProxy apiProxy = APIProxy(APIService());
  ResponseModel data = await apiProxy.fetch('my_url.com/my_api');
  print(data.toString());
  data = await apiProxy.fetch('my_url.com/my_api');
  print(data.toString());
  data = await apiProxy.fetch('my_new_url.com/my_api');
  print(data.toString());
}