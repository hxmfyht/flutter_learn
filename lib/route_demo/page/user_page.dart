import 'package:flutter/material.dart';
import 'package:flutter_learn/route_demo/mode/user_mode.dart';

class MePage extends StatefulWidget {
  const MePage({Key? key, required this.user}) : super(key: key);
  final UserMode user;

  @override
  State<MePage> createState() => _MePageState();
}

class _MePageState extends State<MePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          children: [
            Text("用户名:${widget.user.name}"),
            Text("年龄:${widget.user.age}"),
            ListView.builder(
              itemBuilder: (context, index,{int bbb=10}){
                return Text(bbb.toString());
              },
              itemCount: 5,
            )
          ],
        )
      ),
    );
  }
}
