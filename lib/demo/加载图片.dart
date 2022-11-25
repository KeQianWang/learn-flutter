

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
        body: HomeBody(),
      ),
    );
  }
}
// const Image({
// this.width, //图片的宽
// this.height, //图片高度
// this.color, //图片的混合色值
// this.colorBlendMode, //混合模式
// this.fit,//缩放模式
// this.alignment = Alignment.center, //对齐方式
// this.repeat = ImageRepeat.noRepeat, //重复方式
// })

// todo Image.network：加载网络中的图片；
class HomeContent extends StatelessWidget {
  const HomeContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Image.network(
          "http://img0.dili360.com/ga/M01/48/3C/wKgBy1kj49qAMVd7ADKmuZ9jug8377.tub.jpg",
          alignment: Alignment.topCenter,
          repeat: ImageRepeat.repeatY,
          color: Colors.red,
          colorBlendMode: BlendMode.colorDodge,
        ),
      ),
    );
  }
}

// todo Image.assets：加载本地资源图片；
class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        alignment: Alignment.topCenter,
        color: Colors.amber,
        child: Image.asset('images/back.jpg'),
      ),
    );
  }
}

