import 'package:flutter/material.dart';
import 'package:flutter_learn/status_manager_demo/provider/view_mode/counter_mode.dart';
import 'package:flutter_learn/status_manager_demo/provider/view_mode/user_view_mode.dart';
import 'package:provider/provider.dart';

class ProviderDemo extends StatefulWidget {
  const ProviderDemo({Key? key}) : super(key: key);

  @override
  State<ProviderDemo> createState() => _ProviderDemoState();
}

class _ProviderDemoState extends State<ProviderDemo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ShowData01(), ShowData02(), ShowData03(),AddButton()],
      ),
    );
  }
}

class ShowData01 extends StatefulWidget {
  const ShowData01({Key? key}) : super(key: key);

  @override
  State<ShowData01> createState() => _ShowData01State();
}

class _ShowData01State extends State<ShowData01> {
  @override
  Widget build(BuildContext context) {
    int counter = Provider.of<CounterMode>(context).counter;
    print("ShowData01State===>Provider.of===>刷新");
    return Card(
        child: Text("01当前的Counter数$counter",
            style: TextStyle(color: Colors.red, fontSize: 30)));
  }
}

class ShowData02 extends StatefulWidget {
  const ShowData02({Key? key}) : super(key: key);

  @override
  State<ShowData02> createState() => _ShowData02State();
}

class _ShowData02State extends State<ShowData02> {
  @override
  Widget build(BuildContext context) {
    print("ShowData02State===>Consumer=====>刷新");
    return Card(
        child: Consumer<CounterMode>(
          builder: (context,counterMode,child){
            return Text("02当前的Counter数${
                counterMode.counter
            }",
                style: TextStyle(color: Colors.blue, fontSize: 30));
          },
        ));
  }
}

class ShowData03 extends StatefulWidget {
  const ShowData03({Key? key}) : super(key: key);

  @override
  State<ShowData03> createState() => _ShowData03State();
}

class _ShowData03State extends State<ShowData03> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Consumer2<CounterMode,UserViewMode>(
        builder:(context,counterMode,userViewMode,child){
          return Column(
            children: [
              Text("03当前的Counter数${counterMode.counter}",style: TextStyle(
                color: Colors.brown,fontSize: 30
              )),
          Text("当前用户${userViewMode.user.name}的年龄${userViewMode.user.age}",style: TextStyle(
          color: Colors.brown,fontSize: 30
          ))
            ],
          );
        },
      ),
    );
  }
}


class AddButton extends StatelessWidget {
  const AddButton({Key? key}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   print("AddButton===>build=====>刷新");
  //   return Container(
  //     child: Consumer<CounterMode>(
  //         child: Icon(Icons.add),
  //         builder: (context, counterMode, child) {
  //           print("AddButton===>Consumer=====>刷新");
  //           return IconButton(
  //             icon: child!,
  //             onPressed: () {
  //               counterMode.counter = counterMode.counter+1;
  //             },
  //           );
  //         }),
  //   );
  // }

// @override
//   Widget build(BuildContext context){
//   return Container(
//     child:Selector<CounterMode,CounterMode>(
//       selector:(context,conterMode)=>conterMode,
//       shouldRebuild: (previous, next)=>false,
//       builder: (context,counterMode,child){
//         print("Selector===>有没有刷新");
//         return IconButton(
//                         icon:Icon(Icons.add),
//                         onPressed: () {
//                           counterMode.counter = counterMode.counter+1;
//                         },
//                       );
//       },
//     )
//   );
// }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Consumer2<CounterMode, UserViewMode>(
          child: Icon(Icons.add),
          builder: (context, counterMode, userViewMode, child) {
            return IconButton(
              icon: child!,
              onPressed: () {
                counterMode.counter = counterMode.counter + 1;
                userViewMode.userAge = counterMode.counter;
              },
            );
          },
        )
    );
  }
}
