

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
      home: Scaffold(
        appBar: AppBar(
          title: Text('king'),
        ),
        body: HomeAllBody(),
      ),
    );
  }
}
// todo CircleAvatar实现圆角方法1
class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: 100,
        backgroundImage: AssetImage('images/back.jpg') ,
        backgroundColor:Colors.red,
        child: Container(
            alignment: Alignment(0, .5),
            width: 200,
            height: 200,
            child: Text("KING",style: TextStyle(fontSize: 20,color: Colors.green),)
        ),
      ),
    );
  }
}

// todo ClipOval实现圆角方法2
class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        child:Image.asset('images/back.jpg',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}

// todo ClipRRect用于实现圆角效果，可以设置圆角的大小。
class HomeContent1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          "https://tva1.sinaimg.cn/large/006y8mN6gy1g7aa03bmfpj3069069mx8.jpg",
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}

class HomeAllBody extends StatelessWidget {
  const HomeAllBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HomeContent1(),
        HomeContent(),
        HomeBody()
      ],
    );
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


