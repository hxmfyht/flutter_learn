import 'package:flutter/material.dart';

class InheritedWidgetDemo extends StatefulWidget {
  const InheritedWidgetDemo({Key? key}) : super(key: key);

  @override
  State<InheritedWidgetDemo> createState() => _InheritedWidgetDemoState();
}

class _InheritedWidgetDemoState extends State<InheritedWidgetDemo> {
  int counter = 100;

  @override
  Widget build(BuildContext context) {
    return CounterDataWidget(
        counter: counter,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ShowData01(),
              ShowData02(),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: IconButton(onPressed: () {
                    setState(() {
                      counter++;
                    });
                  }, icon: Icon(Icons.add)))
            ],
          ),
        ));
  }
}

class CounterDataWidget extends InheritedWidget {


  final Widget child;

  /// 1.共享数据
  final int counter;

  /// 2.定义构造方法
  const CounterDataWidget({Key? key, required this.child, this.counter = 0})
      : super(child: child, key: key);

  /// 3.获取组件最近的当前InheritedWidget
  static CounterDataWidget? of(BuildContext context) {
    ///沿着Element树，去找到最近的CounterDataWidget,从Element中取出Widget对象
    return context.dependOnInheritedWidgetOfExactType();
  }

  /// 4.决定要不要回调state中的didChangeDependencies
  /// 如果返回true:执行依赖当前InheritedWidget的State中的did
  @override
  bool updateShouldNotify(CounterDataWidget oldWidget) {
    return oldWidget.counter!=counter;
  }
}

class ShowData01 extends StatelessWidget {
  const ShowData01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int counter = CounterDataWidget.of(context)?.counter ?? 0;
    return Card(
        child: Text("01当前的数值$counter",
            style: TextStyle(color: Colors.blue, fontSize: 30)));
  }
}

class ShowData02 extends StatelessWidget {
  const ShowData02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int counter = CounterDataWidget.of(context)?.counter ?? 0;
    return Card(
        child: Text("02当前的数组$counter",
            style: TextStyle(color: Colors.red, fontSize: 30)));
  }
}
