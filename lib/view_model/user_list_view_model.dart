import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_information_list_mvvm_app/model/user_list.dart';
import 'package:flutter_information_list_mvvm_app/repository/user_repository.dart';

class UserListViewModel with ChangeNotifier {

  UserListViewModel() {
    getUsers();
  }

  final _userRepository = UserRepository();
  bool _isLoading = false;
  List<Result> _users = [];
  String _errorMessage = "";

  bool get isLoading => _isLoading;
  List<Result> get users => _users;
  String get errorMessage => _errorMessage;

  void setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  void setErrorMessage(String message) {
    _errorMessage = message;
    notifyListeners();
  }

  void setUsers(List<Result> data) {
    _users = data;
    notifyListeners();
  }

  Future<void> getUsers({int lengthUser = 10}) async {
    setLoading(true);
    setErrorMessage("");
    try {
      final response = await _userRepository.getUserList(lengthUser);
      setUsers(response.results);
    } on SocketException catch (error) {
      setErrorMessage(error.message);
    } catch (error) {
      setErrorMessage(error.toString());
    }
    setLoading(false);
  }

}