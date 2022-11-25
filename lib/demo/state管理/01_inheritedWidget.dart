import 'package:flutter/material.dart';


main() => runApp(MyApp());

// todo 主要class
class HYDataWidget extends InheritedWidget{
  // 共享数据
  final int? counter;

  //定义构造方法
  HYDataWidget({this.counter, required Widget child}):super(child: child);

  // 3.获取组件最近的当前InheritedWidget
  static HYDataWidget? of(BuildContext context) {
    // 沿着Element树, 去找到最近的HYCounterElement, 从Element中取出Widget对象
    return context.dependOnInheritedWidgetOfExactType();
  }

// 4.决定要不要回调State中的didChangeDependencies
  // 如果返回true: 执行依赖当期的InheritedWidget的State中的didChangeDependencies
  @override
  bool updateShouldNotify(HYDataWidget oldWidget) {
    return oldWidget.counter != counter;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'King',
      theme: ThemeData(
          primarySwatch: Colors.blue, splashColor: Colors.transparent),
      home: HYHomePage(),
    );
  }
}

class HYHomePage extends StatefulWidget {
  const HYHomePage({Key? key}) : super(key: key);

  @override
  State<HYHomePage> createState() => _HYHomePageState();
}

class _HYHomePageState extends State<HYHomePage> {
  int data = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InheritedWidget'),
      ),
      body:HYDataWidget(
        counter:data,
        child: Center(
          child: Column(
            children: [
              HYShowData01(),
              HYShowData02()
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            data++;
          });
        },
      ),
    );
  }
}
class HYShowData01 extends StatefulWidget {
  const HYShowData01({Key? key}) : super(key: key);

  @override
  State<HYShowData01> createState() => _HYShowData01State();
}

class _HYShowData01State extends State<HYShowData01> {

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("执行了_HYShowData01State中的didChangeDependencies");
  }


  @override
  Widget build(BuildContext context) {
    int? counter = HYDataWidget.of(context)?.counter;// todo 获取
    return Card(
      color: Colors.red,
      child: Text("当前计数: $counter", style: TextStyle(fontSize: 30),),
    );
  }
}

class HYShowData02 extends StatelessWidget {
  const HYShowData02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int? counter = HYDataWidget.of(context)?.counter; // todo 获取
    return Container(
      color: Colors.blue,
      child: Text("当前计数: $counter", style: TextStyle(fontSize: 30),),
    );
  }
}




