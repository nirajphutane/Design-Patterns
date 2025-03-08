
import 'RemoteCar.dart';
import 'Commands.dart';
import 'Invoker.dart';

void main(final List<String> args) {

  const RemoteCar car = RemoteCar();
  final Invoker invoker = Invoker();
  invoker.add(const Forward(car, 70));
  invoker.add(const Forward(car, 30));
  invoker.add(const TurnLeft(car));
  invoker.add(const Forward(car, 60));
  invoker.add(const Forward(car, 20));
  invoker.add(const TurnRight(car));
  invoker.add(const Forward(car, 0));
  invoker.add(const Backward(car, 20));
  invoker.run();
}