import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, required this.message}) : super(key: key);
  final String message;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  _onBackTap(BuildContext context) {
    Navigator.of(context).pop("a detail message");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("详情页"),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.keyboard_backspace),
            onPressed: () {
              print("点击title返回");
              _onBackTap(context);
            },
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.message, style: TextStyle(fontSize: 20)),
              TextButton(
                  onPressed: () => _onBackTap(context),
                  child: Text("点击返回首页", style: TextStyle(fontSize: 20))),
            ],
          ),
        ));

    //   WillPopScope(
    //   onWillPop: () {
    //     _onBackTap(context);
    //      true:系统会自动帮我们执行pop操作
    //      false:系统不在执行pop操作,需要我们自己来执行
    //     return Future.value(false);
    //   },
    //   child:
    //   Scaffold(
    //       appBar: AppBar(
    //         title: Text("详情页"),
    //         centerTitle: true,
    //       ),
    //       body: Center(
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             Text(widget.message, style: TextStyle(fontSize: 20)),
    //             TextButton(
    //                 onPressed: () => _onBackTap(context),
    //                 child: Text("点击返回首页", style: TextStyle(fontSize: 20)))
    //           ],
    //         ),
    //       )),
    // );
  }
}
