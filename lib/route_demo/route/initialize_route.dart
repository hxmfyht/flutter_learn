import 'package:flutter/material.dart';
import 'package:flutter_learn/route_demo/mode/user_mode.dart';
import 'package:flutter_learn/route_demo/page/user_page.dart';

import '../page/about_page.dart';
import '../page/detail_page.dart';
import '../page/home_page.dart';
import '../page/unknown_page.dart';

Map<String, WidgetBuilder>? routes={
  '/': (context) => HomePage(),
  'about': (context) => AboutPage(),
  // 'me':(context,{UserMode? user})=>MePage(user:user!),
};


RouteFactory? onGenerateRoute=(settings){
  print("每次点击都会触发===》onGenerateRoute");
  if(settings.name=="detail"){
    return MaterialPageRoute(
      builder:(BuildContext context){
        return DetailPage(message:settings.arguments as String );
      },
    );
  }
};

RouteFactory? onUnknownRoute=(settings){
  print("每次点击都会触发=====》onUnknownRoute");
  return MaterialPageRoute(builder: (BuildContext context){
    return UnknownPage();
  });
};