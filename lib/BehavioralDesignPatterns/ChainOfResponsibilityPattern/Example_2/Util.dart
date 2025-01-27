
(int division, int reminder) getDivisionAndReminder(final int dividend, final int divider) {
  int division = dividend ~/ divider;
  int reminder = dividend % divider;
  return (division, reminder);
}

void printTotal(final int total) {
  print('----------------');
  print('Total: \t $total');
}