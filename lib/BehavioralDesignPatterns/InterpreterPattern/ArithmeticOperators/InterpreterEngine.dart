
class InterpreterEngine  {

  final String query;

  const InterpreterEngine(this.query);

  Expressions getExpression() {
    String query = this.query.toLowerCase();
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
      RegExpMatch? matches = RegExp(r'[-]?[0-9]*\.?[0-9]+').firstMatch(query);
      String? radius = matches?.group(0);
      return double.parse(radius!);
    } catch(error) {
      throw Exception('Radius is missing!!');
    }
  }

  (double length, double width) getLengthAndWidth() {
    try {
      final Iterable<RegExpMatch> matches = RegExp(r'[-]?[0-9]*\.?[0-9]+').allMatches(query);
      String? length = matches.first.group(0);
      String? width = matches.last.group(0);
      return (double.parse(length!), double.parse(width!));
    } catch(error) {
      throw Exception('Dimensions are missing!!');
    }
  }

  (double leftSide, double rightSide, double base) getSides() {
    try {
      final Iterable<RegExpMatch> matches = RegExp(r'[-]?[0-9]*\.?[0-9]+').allMatches(query);
      List<RegExpMatch> list = matches.toList();
      String? leftSide = list[0].group(0);
      String? rightSide = list[1].group(0);
      String? base = list[2].group(0);
      return (double.parse(leftSide!), double.parse(rightSide!), double.parse(base!));
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