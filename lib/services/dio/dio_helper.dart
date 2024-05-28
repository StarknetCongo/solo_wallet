import 'package:dio/dio.dart';
import 'package:solo_wallet/services/dio/interceptors.dart';

class DioApi {
  late final Dio dio = createDio();
  DioApi._internal();
  static final singleton = DioApi._internal();
  factory DioApi() => singleton;
  Dio createDio() {
    Dio dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(milliseconds: 30000), // for 15 seconds
        receiveTimeout: const Duration(milliseconds: 30000),
        sendTimeout: const Duration(milliseconds: 30000),
      ),
    );
    dio.interceptors.add(ApiInterceptor(dio));
    return dio;
  }
}
