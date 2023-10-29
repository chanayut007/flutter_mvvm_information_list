import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_information_list_mvvm_app/model/user_list.dart';
import 'package:flutter_information_list_mvvm_app/network/network_interceptor.dart';

class UserRepository {

  UserRepository._privateConstructor();

  static final UserRepository _instance = UserRepository._privateConstructor();

  factory UserRepository() {
    _instance._initialInterceptor();
    return _instance;
  }

  final String baseUrl = "https://randomuser.me/api";
  final _dio = Dio();

  void _initialInterceptor() {
    _dio.interceptors.add(NetworkInterceptor());
  }

  Future<UserList> getUserList(int lengthUser) async {
    try {
      final response = await _dio.get("$baseUrl?results=$lengthUser");
      return UserList.fromJson(response.data);
    } on DioException catch (error) {
      if (error.type == DioExceptionType.connectionError) {
        throw SocketException(error.message!);
      }
      throw Exception(error.message);
    } catch (error) {
      if (kDebugMode) {
        debugPrint('$error');
      }
      throw Exception(error.toString());
    }
  }
}