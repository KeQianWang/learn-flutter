import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'event_bus.dart';

main() => runApp(MyApp());

class UserInfo{
  String name;
  int age;

  UserInfo(this.age,this.name);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.green),
      home: HomwPage(),
    );
  }
}

class HomwPage extends StatelessWidget {
  const HomwPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('king'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HYButton(),
            HYText()
          ],
        ),
      ),
    );
  }
}
class HYButton extends StatelessWidget {
  const HYButton ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        child: Text("按钮"),
        onPressed: (){
          final info = UserInfo(18, 'keqian');
          eventBus.fire(info);
        }
    );
  }
}

class HYText extends StatefulWidget {
  const HYText({Key? key}) : super(key: key);

  @override
  State<HYText> createState() => _HYTextState();
}

class _HYTextState extends State<HYText> {
  String _message ='helllo world';

  @override
  void initState() {
    super.initState();
    // 3.监听事件的类型
    eventBus.on<UserInfo>().listen((data) {
      setState(() {
        _message = "${data.name}-${data.age}";
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Text(_message, style: TextStyle(fontSize: 20),);
  }
}



