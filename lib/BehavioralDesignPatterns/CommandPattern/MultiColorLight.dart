
class MultiColorLight {

  bool _isOn = false;

  void turnOn() {
    _isOn = true;
    print('Light is On');
    setColor();
  }

  void turnOff() {
    _isOn = false;
    print('Light is Off');
  }

  void setColor([String color = 'White']) {
    if(_isOn) {
      print('---($color)---');
    } else {
      throw Exception("Can't set $color color, Now light is Off");
    }
  }
}