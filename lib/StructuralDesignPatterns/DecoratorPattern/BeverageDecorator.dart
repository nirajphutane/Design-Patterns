
import 'IBeverage.dart';

 abstract class BeverageDecorator implements IBeverage {

  final IBeverage iBeverage;

  BeverageDecorator(this.iBeverage);

  @override
  double getCost() => iBeverage.getCost();

  @override
  String getDescription() => iBeverage.getDescription();
}

/*Either use above way by super keyword or use following by parametrise constructor*/

/*
abstract class BeverageDecorator implements IBeverage {

 final IBeverage iBeverage;

 BeverageDecorator(this.iBeverage);
}*/
