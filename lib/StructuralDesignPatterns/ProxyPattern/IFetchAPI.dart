
import 'ResponseModel.dart';

abstract interface class IFetchAPI {
  Future<ResponseModel> fetch(String url);
}