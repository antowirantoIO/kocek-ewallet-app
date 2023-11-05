import 'package:dio/dio.dart';
import 'package:kocek/features/app/models/env_model.dart';
import 'package:kocek/modules/dio/dio_client.dart';
import 'package:kocek/modules/token_refresh/dio_token_refresh.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioInjection {
  Dio dio(EnvModel env, DioTokenRefresh dioTokenRefresh) => initDioClient(env, dioTokenRefresh);
}
