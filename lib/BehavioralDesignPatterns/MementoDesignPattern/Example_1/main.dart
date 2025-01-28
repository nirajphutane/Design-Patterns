
import 'CareTaker.dart';
import 'Originator.dart';

void main(final List<String> args) {
  final Originator originator = Originator();
  final CareTaker careTaker = CareTaker();

  originator.state = 'I';
  careTaker.save(originator.saveStateToMemento());

  originator.state = 'I am';
  careTaker.save(originator.saveStateToMemento());

  originator.state = 'I am Patil';
  careTaker.save(originator.saveStateToMemento());

  originator.state = 'I am Patil.';
  // careTaker.save(originator.saveState());

  print(originator.state);

  careTaker.undo(originator);
  print(originator.state);

  careTaker.undo(originator);
  print(originator.state);

  careTaker.undo(originator);
  print(originator.state);

  careTaker.undo(originator);
  print(originator.state);

  print('');
  originator.state = 'State-1';
  careTaker.save(originator.saveStateToMemento());

  originator.state = 'State-2';
  careTaker.save(originator.saveStateToMemento());

  originator.state = 'State-3';
  careTaker.save(originator.saveStateToMemento());

  print(originator.state);

  careTaker.retrieve(originator, 0);
  print(originator.state);

  careTaker.retrieve(originator, 2);
  print(originator.state);

  careTaker.retrieve(originator, 1);
  print(originator.state);
}