
import 'package:flutter/material.dart';
import 'package:myapp/demo/Scroll_image.dart';

main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('keqian'),
        ),
        body:HomeContent(),
      ),
    );
  }
}

//   textAlign：文本对齐方式，比如TextAlign.center
//     maxLines：最大显示行数，比如1
//     overflow：超出部分显示方式，比如TextOverflow.ellipsis
//     textScaleFactor：控制文本缩放，比如1.24

class HomeContent extends StatelessWidget {
  const HomeContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(
        '《定风波》 苏轼 \n莫听穿林打叶声，何妨吟啸且徐行。\n竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。',
        style: TextStyle(
          color: Colors.green,
          fontSize: 20,
        ),
        maxLines: 3,
        textAlign:TextAlign.center,
        overflow: TextOverflow.ellipsis,
        textScaleFactor:1.9
    );
  }
}
