import 'package:flutter_learn/status_manager_demo/provider/mode/user_mode.dart';
import 'package:flutter_learn/status_manager_demo/provider/view_mode/user_view_mode.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'counter_mode.dart';

List<SingleChildWidget> providers=
  [
    ChangeNotifierProvider(create: (_) => CounterMode()),
    ChangeNotifierProvider(
        create: (_) => UserViewMode(UserMode(name: "hahaha", age: 27))),
  ];