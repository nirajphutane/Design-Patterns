
import 'ICommand.dart';
import 'RemoteCar.dart';

class Forward implements ICommand {

  final RemoteCar car;
  final int speed;
  const Forward(this.car, this.speed);

  @override
  void execute() => car.moveForward(speed);
}

class Backward implements ICommand {

  final RemoteCar car;
  final int speed;
  const Backward(this.car, this.speed);

  @override
  void execute() => car.moveBackward(speed);
}

class TurnLeft implements ICommand {

  final RemoteCar car;
  const TurnLeft(this.car);

  @override
  void execute() => car.turnLeft();
}

class TurnRight implements ICommand {

  final RemoteCar car;
  const TurnRight(this.car);

  @override
  void execute() => car.turnRight();
}
