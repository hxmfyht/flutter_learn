import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  void _onBackTap() {
    Navigator.of(context).pop("a message about");
  }

  @override
  Widget build(BuildContext context) {
    String messge=ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('关于'),
        leading: IconButton(
          icon: Icon(Icons.keyboard_backspace),
          onPressed: ()=>_onBackTap(),
        ),
      ),
      body:Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(messge,style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
