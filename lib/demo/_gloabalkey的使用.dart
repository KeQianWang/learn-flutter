
import 'package:flutter/material.dart';

main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'King',
      theme: ThemeData(
          primarySwatch: Colors.red, splashColor: Colors.transparent),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  final GlobalKey<_HomeContentState> homeKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('title'),),
      body: HomeContent(key: homeKey,),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.gesture),
        onPressed: () {
          print(homeKey.currentState);
          print(homeKey.currentState?.message);
          print(homeKey.currentState?.widget.name);
          homeKey.currentState?.test();
        },
      ),
    );
  }
}

class HomeContent extends StatefulWidget {
  final String name = 'codeWhy';
  const HomeContent({Key? key}) : super(key: key);

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  final String message = "123";

  void test() {
    print("testtesttest");
  }

  @override
  Widget build(BuildContext context) {
     return Text(message);
  }
}


