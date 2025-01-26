
import 'ResponseModel.dart';

abstract interface class IFetchAPI {
  Future<ResponseModel> fetch(final String url);
}