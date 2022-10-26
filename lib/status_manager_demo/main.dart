import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'inherited_widget.dart';

void main(){
  runApp(StatusManagerDemo());
}

class StatusManagerDemo extends StatelessWidget {
  const StatusManagerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "状态管理",
      home:HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:InheritedWidgetDemo(),
    );
  }
}

