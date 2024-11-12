import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:travelmate/core/config/const.dart';

final googleMapsClientProvider = Provider<Dio>((ref) {
  return Dio(
    BaseOptions(
      baseUrl: Const.googleMapsURL,
      headers: {
        'X-Ios-Bundle-Identifier': 'com.redc4ke.travelmate',
        'X-Android-Package': 'com.redc4ke.travelmate',
      },
    ),
  )..interceptors.addAll(
      [
        TalkerDioLogger(),
      ],
    );
});
