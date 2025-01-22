
import 'IBeverage.dart';
import 'BeverageDecorator.dart';

class Milk extends BeverageDecorator {

  const Milk(final IBeverage beverage) : super(beverage);

  @override
  double getCost() => super.getCost() + 5;

  @override
  String getDescription() => '${super.getDescription()} + Milk';
}

class Chocolate extends BeverageDecorator {

  const Chocolate(final Milk beverage) : super(beverage);

  @override
  double getCost() => super.getCost() + 15;

  @override
  String getDescription() => '${super.getDescription()} + Chocolate';
}

class Sugar extends BeverageDecorator {

  const Sugar(final IBeverage beverage) : super(beverage);

  @override
  double getCost() => super.getCost() + 7.5;

  @override
  String getDescription() => '${super.getDescription()} + Sugar';
}

/*Either use above way by super keyword or use following by parametrise constructor*/

/*
class Milk extends BeverageDecorator {

  final IBeverage beverage;

  const Milk(this.beverage) : super(beverage);

  @override
  double getCost() => beverage.getCost() + 5;

  @override
  String getDescription() => '${beverage.getDescription()} + Milk';
}

class Chocolate extends BeverageDecorator {

  final Milk beverage;

  const Chocolate(this.beverage) : super(beverage);

  @override
  double getCost() => beverage.getCost() + 15;

  @override
  String getDescription() => '${beverage.getDescription()} + Chocolate';
}

class Sugar extends BeverageDecorator {

  final IBeverage beverage;

  const Sugar(this.beverage) : super(beverage);

  @override
  double getCost() => beverage.getCost() + 7.5;

  @override
  String getDescription() => '${beverage.getDescription()} + Sugar';
}*/
