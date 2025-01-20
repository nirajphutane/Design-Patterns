
String formatTable(final Map<String, dynamic> fields) {
  String table = '';
  fields.forEach((key, value) {
    table += '${key.padRight(25)}: $value\n';
  });
  return table;
}