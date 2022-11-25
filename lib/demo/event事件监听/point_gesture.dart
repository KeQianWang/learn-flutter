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
      body: Center(
        child: Stack( //  todo 阻止事件冒泡 改为stack布局，样式重叠就可以
          alignment: Alignment.center,
          children: [
            GestureDetector(
              onTapDown: (details) {
                print("outer click");
              },
              child: Container(
                width: 200,
                height: 200,
                color: Colors.yellow,
                alignment: Alignment.center,
              ),
            ),
            IgnorePointer( // todo IgnorePointer 忽略事件的组建
              child: GestureDetector(
                onTapDown: (details) {
                  print("inner click");
                },
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}

class GestureDemo extends StatelessWidget {
  const GestureDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTapDown: (details) {
          print("手指按下");
          print(details.globalPosition);
          print(details.localPosition);
        },
        onTapUp: (details) {
          print("手指抬起");
        },
        onTapCancel: () {
          print("手势取消");
        },
        onTap: () {
          print("手势点击");
        },
        onDoubleTap: () {
          print("手指双击");
        },
        onLongPress: () {
          print("长按手势");
        },
        child: Container(
          width: 200,
          height: 200,
          color: Colors.orange,
        ),
      ),
    );
  }
}

class ListenerDemo extends StatelessWidget {
  const ListenerDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Listener(
      child: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.red,
        ),
      ),
      onPointerDown: (event){
        print("指针按下:$event");
        print(event.position);
        print(event.localPosition);
      },
      // onPointerMove: (event) => print("手指移动:$event"),
      // onPointerUp: (event) => print("手指抬起:$event"),
    );
  }
}
