
class ResponseModel {

  final int statusCode;
  final String data;

  const ResponseModel(this.statusCode, this.data);

  @override
  String toString() => '{StatusCode: $statusCode,\n Data: $data}';
}