import 'package:flutter/material.dart';
import 'package:flutter_learn/status_manager_demo/provider/mode/user_mode.dart';

class UserViewMode extends ChangeNotifier{
  UserViewMode(this._user);

  UserMode _user;

  UserMode get user => _user;

  set userAge(int age){
    _user.age=age;
  }

}