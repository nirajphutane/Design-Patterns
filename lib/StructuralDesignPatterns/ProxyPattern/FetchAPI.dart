
import 'dart:math';
import 'ResponseModel.dart';
import 'IFetchAPI.dart';

class APIService implements IFetchAPI {

  @override
  Future<ResponseModel> fetch(final String url) async => Future.delayed(
    const Duration(seconds: 2),
        () => ResponseModel(200, '${Random().nextInt(100000)}')
  );
}