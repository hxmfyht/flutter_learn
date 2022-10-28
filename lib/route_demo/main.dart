import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/route_demo/route/initialize_route.dart';
import 'package:flutter_learn/route_demo/page/unknown_page.dart';


void main() {
  runApp(RouteDemo());
}

class RouteDemo extends StatelessWidget {
  const RouteDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
        initialRoute: "/",
        routes: routes!,
    onGenerateRoute:onGenerateRoute,
      onUnknownRoute: (settings){
        print("每次点击都会触发=====》onUnknownRoute");
          return MaterialPageRoute(builder: (BuildContext context){
            return UnknownPage();
          });
      },
    );
  }
}
