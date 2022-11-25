import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

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
      body: HomeContent(),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // todo 常用 使用GridView.build 会在真正需要的时候去创建子Widget
    return GridView.builder(
        itemCount:100,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 6,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1.0
        ),
        itemBuilder: (BuildContext ctx, int index) {
          return Container(
            color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256)),
          );
        }
    );
  }
}

class GridViewDemo2 extends StatelessWidget {
  const GridViewDemo2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 150,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 1.8
      ),
      children: List.generate(100, (index){
        return Container(
          alignment:AlignmentDirectional.center,
          color: Color.fromARGB(255, Random().nextInt(256),  Random().nextInt(256),  Random().nextInt(256)),
          child: Text('$index',style: TextStyle(fontSize: 20,color: Colors.white),),
        );
      }),
    );
  }
}



class GridViewDemo1 extends StatelessWidget {
  const GridViewDemo1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 6,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1.0
      ),
      children: List.generate(50, (index){
        return Container(
          alignment:AlignmentDirectional.center,
          color: Color.fromARGB(255, Random().nextInt(256),  Random().nextInt(256),  Random().nextInt(256)),
          child: Text('$index',style: TextStyle(fontSize: 20,color: Colors.white),),
        );
      }),
    );
  }
}
