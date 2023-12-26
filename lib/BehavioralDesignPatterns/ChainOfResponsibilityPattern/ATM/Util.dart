
(int division, int reminder) getDivisionAndReminder(int dividend, int divider) {
  int division = dividend ~/ divider;
  int reminder = dividend % divider;
  return (division, reminder);
}

void printTotal(int total) {
  print('----------------');
  print('Total: \t $total');
}