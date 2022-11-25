import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // 1.亮度
        brightness: Brightness.light,
        // 2.primarySwatch传入不是Color, 而是MaterialColor(包含了primaryColor和accentColor)
        primarySwatch: Colors.red,
        // 3.primaryColor: 单独设置导航和TabBar的颜色
        primaryColor: Colors.orange,
        // 4.accentColor: 单独设置FloatingActionButton\Switch
        accentColor: Colors.green,
        // 5.Button的主题
        buttonTheme: ButtonThemeData(
            height: 25,
            minWidth: 10,
            buttonColor: Colors.yellow
        ),
        // 6.Card的主题
        cardTheme: CardTheme(
            color: Colors.greenAccent,
            elevation: 10
        ),
      ),
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
          children: <Widget>[
            Text("Hello World"),
            Text("Hello World", style: TextStyle(fontSize: 14),),
            Text("Hello World", style: TextStyle(fontSize: 20),),
            Switch(value: true, onChanged: (value) {},),
            CupertinoSwitch(value: true, onChanged: (value) {}, activeColor: Colors.red,),
            TextButton(child: Text("R"), onPressed: () {},),
            Card(child: Text("你好啊,李银河", style: TextStyle(fontSize: 50),),)
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              label: '首页',
              icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              label: '分类',
              icon: Icon(Icons.category)
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (ctx) {
                return HYDetailPage();
              }
          ));
        },
      ),
    );
  }
}

class HYDetailPage extends StatelessWidget {
  const HYDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data:  Theme.of(context).copyWith(
          primaryColor: Colors.purple
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("详情页"),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Text("detail pgae"),
        ),
        floatingActionButton: Theme(
          data: Theme.of(context).copyWith(
              colorScheme: Theme.of(context).colorScheme.copyWith(
                  secondary: Colors.pink
              )
          ),
          child: FloatingActionButton(
            child: Icon(Icons.pets),
            onPressed: () {
            },
          ),
        ),
      ),
    );
  }
}


