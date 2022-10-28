import 'package:flutter/material.dart';

class UnknownPage extends StatelessWidget {
  const UnknownPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("错误路由"),
      ),
        body: Center(
      child: Container(
        child: Text("错误路由", style: TextStyle(color: Colors.red, fontSize: 20)),
      ),
    ));
  }
}
