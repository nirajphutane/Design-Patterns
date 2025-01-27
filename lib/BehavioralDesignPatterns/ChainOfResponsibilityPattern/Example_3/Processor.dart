
abstract class Processor {

  final int rank;
  final Processor? position;
  const Processor(this.rank, this.position);

  void next() {
    if (position != null) {
      if (position!.rank > rank) {
        throw 'Wrong chain';
      }
      print('Reported from $rank to ${position!.rank}');
      position!.next();
    }
  }
}

class BandD extends Processor {

  const BandD(final Processor position) : super(4, position);
}

class BandC extends Processor {

  const BandC(final Processor position) : super(3, position);
}

class BandB extends Processor {

  const BandB(final Processor position) : super(2, position);
}

class BandA extends Processor {

  const BandA() : super(1, null);
}