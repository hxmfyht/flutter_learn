import 'package:flutter/material.dart';
import 'package:flutter_learn/route_demo/mode/user_mode.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String message="首页";

  void _jumpToDetail(BuildContext context) {
    Navigator.pushNamed(context, 'detail',arguments: "a home message arguments");
    // Navigator.of(context).push(
    //     MaterialPageRoute(builder: (BuildContext context) => DetailPage(message: "a home message",))).then((value) =>setState((){
    //       message=value;
    // }) );
  }

void _jumpToAbout(BuildContext context){
    Navigator.pushNamed<dynamic>(context, 'about',arguments: "a home message").then((value) {
      setState(() {
        message=value!;
      });
    });
}

  void _jumpToMe(BuildContext context){
    Navigator.pushNamed<dynamic>(context, 'me',arguments:UserMode(name: "王哈哈哈", age: 111));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message),
            TextButton(
                onPressed: () =>_jumpToDetail(context),
                child: Text("跳转详情页", style: TextStyle(fontSize: 20))),
            TextButton(
                onPressed: () =>_jumpToAbout(context),
                child: Text("跳转关于页", style: TextStyle(fontSize: 20))),

            TextButton(
                onPressed: () =>_jumpToMe(context),
                child: Text("跳转我的页面", style: TextStyle(fontSize: 20))),

          ],
        ),
      ),
    );
  }
}
