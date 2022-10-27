import 'package:flutter/material.dart';
import 'package:flutter_learn/status_manager_demo/provider/mode/user_mode.dart';
import 'package:flutter_learn/status_manager_demo/provider/provider_demo.dart';
import 'package:flutter_learn/status_manager_demo/provider/view_mode/counter_mode.dart';
import 'package:flutter_learn/status_manager_demo/provider/view_mode/initialize_provider.dart';
import 'package:flutter_learn/status_manager_demo/provider/view_mode/user_view_mode.dart';
import 'package:provider/provider.dart';

import 'inherited_widget.dart';

void main() {
  runApp(
    ///多个数据模型优化前
      // ChangeNotifierProvider(
      // create: (_) => CounterMode(),
      // child: ChangeNotifierProvider(
      //     create: (_) => UserViewMode(UserMode(name: "hahaha", age: 27)),
      //     child: StatusManagerDemo()))
    ///多个数据模型优化后
      MultiProvider(
    providers:providers,
    child: StatusManagerDemo(),
  ));
}

class StatusManagerDemo extends StatelessWidget {
  const StatusManagerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "状态管理", home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProviderDemo(),
    );
  }
}
