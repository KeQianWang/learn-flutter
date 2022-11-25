import 'package:flutter/material.dart';
import 'pages/image_detail.dart';
import 'pages/modal_page.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, splashColor: Colors.transparent),
      home: HYHomePage(),
    );
  }
}

class HYHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: Center(
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 16/9
          ),
          children: List.generate(20, (index) {
            final imageURL = "https://picsum.photos/500/500?random=$index";
            return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (ctx, anim1, anim2) {
                        return FadeTransition(opacity: anim1, child: HYImageDetailPage(imageURL));
                      }
                  ));
                },
                // 点击一个头像，显示头像的大图，并且从原来图像的Rect到大图的Rect
                // 点击一个商品的图片，可以展示商品的大图，并且从原来图像的Rect到大图的Rect
                // 这种跨页面共享的动画被称之为享元动画（Shared Element Transition）
                //
                // 在Flutter中，有一个专门的Widget可以来实现这种动画效果：Hero
                //
                // 实现Hero动画，需要如下步骤：
                //
                // todo 1.在第一个Page1中，定义一个起始的Hero Widget，被称之为source hero，并且绑定一个tag；
                // todo 2.在第二个Page2中，定义一个终点的Hero Widget，被称之为 destination hero，并且绑定相同的tag；
                // 3.可以通过Navigator来实现第一个页面Page1到第二个页面Page2的跳转过程；
                // Flutter会设置Tween来界定Hero从起点到终端的大小和位置，并且在图层上执行动画效果。
                child: Hero(
                  tag: imageURL,
                  child: Image.network(
                    imageURL,
                    fit: BoxFit.cover,
                  ),
                )
            );
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.pool),
        onPressed: () {
          // iOS -> Modal方式
//          Navigator.of(context).push(MaterialPageRoute(
//            builder: (ctx) {
//              return HYModalPage();
//            },
//            fullscreenDialog: true
//          ));
          Navigator.of(context).push(PageRouteBuilder(
              transitionDuration: Duration(seconds: 3),
              pageBuilder: (ctx, animation1, animation2) {
                return FadeTransition(
                  opacity: animation1,
                  child: HYModalPage(),
                );
              }
          ));
//          Navigator.of(context).pushNamed(routeName)
        },
      ),
    );
  }
}