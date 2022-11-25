
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.green
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('keqian'),
        ),
        body: HomeContent(),
        //todo 浮动按钮显示
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () { print("FloatingActionButton Click"); },
        ),
        floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return setCircular();
  }
}

//todo 设置圆角另一种方法
class setCircular extends StatelessWidget {
  const setCircular({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          border: Border.all(
              width: 5,
              color: Colors.purple
          ),
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage('images/back.jpg')),
        ),
      ),
    );
  }
}

class AlignDemo extends StatelessWidget {
  const AlignDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      // todo Center组件继承自Align，只是将alignment设置为Alignment.center
      child: Icon(Icons.factory,color: Colors.red,size: 40,),
      alignment: Alignment.bottomRight, //todo  对齐方式，默认居中对齐
      widthFactor:3,
      heightFactor: 3,
    );
  }
}

class PaddingDemo extends StatelessWidget {
  const PaddingDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: 100,
          left: 100
      ),
      child: Text('你好啊 李老师',style: TextStyle(fontSize: 20,color: Colors.red),),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: Text('hello world'),
      alignment: Alignment(0,0),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      decoration:BoxDecoration(
          color: Colors.green,
          border: Border.all(
              width: 5,
              color: Colors.purple
          ),
          boxShadow: [
            BoxShadow(color: Colors.orange, offset: Offset(10, 10), spreadRadius: 5, blurRadius: 10),
            BoxShadow(color: Colors.blue, offset: Offset(-10, 10), spreadRadius: 5, blurRadius: 10),
          ]
      ) ,
    );
  }
}
