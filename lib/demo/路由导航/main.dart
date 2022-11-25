import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'about.dart';
import 'detail.dart';
import 'router/router.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.green),
      home: HomwPage(),
      routes: HYRouter.routes,
      initialRoute:  HYRouter.initialRoute,
      onGenerateRoute: HYRouter.generateRoute,
      onUnknownRoute: HYRouter.unknownRoute,

    );
  }
}

class HomwPage extends StatefulWidget {
  static const String routeName = "/";
  const HomwPage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomwPage> createState() => _HomwPageState();
}

class _HomwPageState extends State<HomwPage> {
  String _homeMessage = "default message";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_homeMessage, style: TextStyle(fontSize: 20, color: Colors.red),),
            TextButton(
              child: Text("跳转到详情"),
              onPressed: () => _jumpToDetail(context),
            ),
            TextButton(
              child: Text("跳转到关于"),
              onPressed: () => _jumpToAbout(context),
            ),
            TextButton(
              child: Text("跳转到详情"),
              onPressed: () => _jumpToDetail2(context),
            ),
            TextButton(
              child: Text("跳转到设置"),
              onPressed: () => _jumpToSettings(context),
            ),
          ],
        ),
      ),
    );
  }
  void _jumpToDetail(BuildContext context) {
    // 1.普通的跳转方式
    // 传递参数: 通过构造器直接传递即可
    Future result = Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) {
          return HYDetailPage("a detail message");
        }
    ));

    result.then((res) {
      setState(() {
        _homeMessage = res;
      });
    });
  }

  void _jumpToAbout(BuildContext context) {
    Future result = Navigator.of(context).pushNamed(HYAboutPage.routeName, arguments: "a about message");

    result.then((res) {
      setState(() {
        _homeMessage = res;
      });
    });
  }

  void _jumpToDetail2(BuildContext context) {
    Future result =Navigator.of(context).pushNamed(HYDetailPage.routeName, arguments: "a home detail2 message");
    result.then((res) {
      setState(() {
        _homeMessage = res;
      });
    });
  }

  void _jumpToSettings(BuildContext context) {
    Future result = Navigator.of(context).pushNamed("/aaaa");
    result.then((res) {
      setState(() {
        _homeMessage = res;
      });
    });
  }
}

