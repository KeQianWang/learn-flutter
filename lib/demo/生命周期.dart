import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    print("HomeBody build");
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.blueAccent
      ),
      home: Scaffold(
        appBar: AppBar(
            title: Text('King')
        ),
        body: MyCounterWidget(),
      ),
    );
  }
}

class MyCounterWidget extends StatefulWidget {

  MyCounterWidget() {
    print("执行了MyCounterWidget的构造方法");
  }

  @override
  State<MyCounterWidget> createState() {
    print("执行了MyCounterWidget的createState方法");
    return _MyCounterWidgetState();
  }
}

class _MyCounterWidgetState extends State<MyCounterWidget> {
  int counter = 0;

  _MyCounterWidgetState() {
    print("执行_MyCounterWidgetState的构造方法");
  }

  @override
  //生命周期初始化
  void initState() {
    // TODO: implement initState
    super.initState();
    print("执行_MyCounterWidgetState的init方法");
  }
  @override
  //生命周期销毁
  void dispose() {
    super.dispose();
    print("执行_MyCounterWidgetState的dispose方法");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("执行_MyCounterWidgetState的didChangeDependencies方法");
  }

  @override
  void didUpdateWidget(MyCounterWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("执行_MyCounterWidgetState的didUpdateWidget方法");
  }

  @override
  Widget build(BuildContext context) {
    print("执行执行_MyCounterWidgetState的build方法");
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  color: Colors.redAccent,
                  child: Text("+1", style: TextStyle(fontSize: 18, color: Colors.white),),
                  onPressed: () {
                    setState(() {
                      counter++;
                    });

                  },
                ),
                MaterialButton(
                  color: Colors.orangeAccent,
                  child: Text("-1", style: TextStyle(fontSize: 18, color: Colors.white),),
                  onPressed: () {
                    setState(() {
                      counter--;
                    });
                  },
                )
              ],
            ),
            Text("当前计数：$counter", style: TextStyle(fontSize: 30),)
          ],
        )
    );
  }
}







