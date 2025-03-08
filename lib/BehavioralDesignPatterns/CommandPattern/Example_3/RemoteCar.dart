
class RemoteCar {

  const RemoteCar();

  void moveForward(final int speed) => print('Car moving forward by $speed m/s');

  void moveBackward(final int speed) => print('Car moving backward by $speed m/s');

  void turnLeft() => print('Car turning left');

  void turnRight() => print('Car turning right');
}