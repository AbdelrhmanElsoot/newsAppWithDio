import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:news_app_learning_dio/core/networking/api_end_point.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioHeler {
  static Dio? dio;

  static initDio() {
    dio ??= Dio(
      BaseOptions(
        baseUrl: ApiEndPoint.baseUrl,
        receiveDataWhenStatusError: true,
      ),
    );
    // dio!.interceptors.add(PrettyDioLogger());
  }

  static getRequest({
    required String endPoint,
    required Map<String, dynamic> query,
  }) async {
    try {
      final response = await dio!.get(endPoint, queryParameters: query);
      return response;
    } catch (e) {
      log(e.toString());
      print("❌ Dio error: $e");
    }
  }

  static postRequest({
    required String endPoint,
    required Map<String, dynamic> query,
  }) async {
    try {
      final response = await dio!.post(endPoint, queryParameters: query);
      return response;
    } catch (e) {
      log(e.toString());
    }
  }
}
