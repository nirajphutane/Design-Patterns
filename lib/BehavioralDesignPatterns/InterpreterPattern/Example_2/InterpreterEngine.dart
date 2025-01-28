
class InterpreterEngine  {

  final String query;

  const InterpreterEngine(this.query);

  Expressions getExpression() {
    final String query = this.query.toLowerCase();
    if(query.contains('area')) {
      if(query.contains('circle')) {
        return Expressions.circle;
      } else if(query.contains('rectangle') || query.contains('square')) {
        return Expressions.rectangle;
      } else if(query.contains('triangle')) {
        return Expressions.triangle;
      }
    }
    return Expressions.none;
  }

  double getRadius() {
    try{
      return double.parse(RegExp(r'-?[0-9]*\.?[0-9]+').firstMatch(query)!.group(0)!);
    } catch(error) {
      throw Exception('Radius is missing!!');
    }
  }

  (double length, double width) getLengthAndWidth() {
    try {
      final Iterable<RegExpMatch> matches = RegExp(r'-?[0-9]*\.?[0-9]+').allMatches(query);
      return (double.parse(matches.first.group(0)!), double.parse(matches.last.group(0)!));
    } catch(error) {
      throw Exception('Dimensions are missing!!');
    }
  }

  (double leftSide, double rightSide, double base) getSides() {
    try {
      final Iterable<RegExpMatch> matches = RegExp(r'-?[0-9]*\.?[0-9]+').allMatches(query);
      final List<RegExpMatch> list = matches.toList();
      return (double.parse(list[0].group(0)!), double.parse(list[1].group(0)!), double.parse(list[2].group(0)!));
    } catch(error) {
      throw Exception('Sides are missing.');
    }
  }
}

enum Expressions {
  circle,
  rectangle,
  triangle,
  none
}