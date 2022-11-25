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
      // theme: ThemeData(primaryColor: Colors.green),
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
      // appBar: AppBar(
      //   title: Text('king'),
      // ),
      body: HomeContent(),
    );
  }
}

// SliverList：类似于我们之前使用过的ListView；
// SliverFixedExtentList：类似于SliverList只是可以设置滚动的高度；
// SliverGrid：类似于我们之前使用过的GridView；
// SliverPadding：设置Sliver的内边距，因为可能要单独给Sliver设置内边距；
// SliverAppBar：添加一个AppBar，通常用来作为CustomScrollView的HeaderView；
// SliverSafeArea：设置内容显示在安全区域（比如不让齐刘海挡住我们的内容）

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // todo Flutter中有一个可以完成这样滚动效果的Widget：CustomScrollView，可以统一管理多个滚动视图。
    // 在CustomScrollView中，每一个独立的，可滚动的Widget被称之为Sliver。
    // Sliver可以翻译成裂片、薄片，你可以将每一个独立的滚动视图当做一个小裂片。
    return CustomScrollView(
      slivers: [
        SliverAppBar(
            expandedHeight: 250.0,
            flexibleSpace:FlexibleSpaceBar(
              centerTitle:true,
              title: Text('KING',style: TextStyle(fontSize: 20,color: Colors.red)),
              background: Image.asset('images/back.jpg',fit: BoxFit.cover,),
            )
        ),
        SliverGrid(
            delegate: SliverChildBuilderDelegate(
                    (BuildContext context,int index){
                  return Container(
                    color: Color.fromARGB(255, Random().nextInt(256),
                        Random().nextInt(256), Random().nextInt(256)),
                    child: Text(
                      '$index',
                      style: TextStyle(fontSize: 20,color: Colors.white),
                      textAlign:TextAlign.center,
                    ),
                  );
                },
                childCount:20
            ),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            )
        ),
        SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(
                    (BuildContext context,int index){
                  return Container(
                    color: Color.fromARGB(255, Random().nextInt(256),
                        Random().nextInt(256), Random().nextInt(256)),
                    child: Text(
                      '$index',
                      style: TextStyle(fontSize: 20,color: Colors.white),
                      textAlign:TextAlign.center,
                    ),
                  );
                },
                childCount:10
            ),
            itemExtent: 50
        )
      ],
    );
  }
}

class CustomScrollView1 extends StatelessWidget {
  const CustomScrollView1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverSafeArea(
          sliver: SliverPadding(
            padding: EdgeInsets.all(8),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 6,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 1.5),
              delegate: SliverChildBuilderDelegate(
                    (BuildContext ctx, int index) {
                  return Container(
                    color: Color.fromARGB(255, Random().nextInt(256),
                        Random().nextInt(256), Random().nextInt(256)),
                  );
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
