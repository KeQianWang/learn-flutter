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
          onPressed: () {
            print("FloatingActionButton Click");
          },
        ),
        floatingActionButtonLocation:
        FloatingActionButtonLocation.centerDocked);
  }
}

class HomeContent extends StatefulWidget {
  const HomeContent({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeContent> createState() => _HomeContentState();
}

// todo **注意：**Positioned组件只能在Stack中使用。
class _HomeContentState extends State<HomeContent> {
  bool _isFavor = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('images/back.jpg',width: double.infinity),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            color: Color.fromARGB(150, 0, 0, 0),
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "孤独的背影",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: _isFavor? Colors.red : Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      _isFavor = !_isFavor;
                    });
                  },
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class StackDemo1 extends StatelessWidget {
  const StackDemo1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.centerStart,
      children: [
        Image.asset('images/back.jpg',
            width: double.infinity, height: 300, fit: BoxFit.cover),
        Positioned(
          left: 20,
          bottom: -50,
          child: Container(
            width: 150,
            height: 150,
            color: Colors.red,
          ),
        ),
        Positioned(
            right: 10,
            bottom: 20,
            child: Text(
              "King",
              style: TextStyle(fontSize: 20, color: Colors.green),
            ))
      ],
    );
  }
}

class ExpandedDemo extends StatelessWidget {
  const ExpandedDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        textBaseline: TextBaseline.ideographic,
        children: [
          /**
           * Flexible中的属性:
           * - flex
           * Expanded(更多) -> Flexible(fit: FlexFit.tight)
           * 空间分配问题
           */
          Expanded(child: Container(height: 60, color: Colors.red)),
          Expanded(
              flex: 2,
              child: Container(width: 1000, height: 100, color: Colors.green)),
          Container(width: 90, height: 80, color: Colors.blue),
          Container(width: 50, height: 120, color: Colors.orange),
        ],
      ),
    );
  }
}

//Column的使用
class ColumeDemo extends StatelessWidget {
  const ColumeDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      textBaseline: TextBaseline.alphabetic,
      verticalDirection: VerticalDirection.down,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          color: Colors.red,
          child: Text(
            'hellox',
            style: TextStyle(fontSize: 20),
          ),
          width: 80,
          height: 60,
        ),
        Container(
          color: Colors.greenAccent,
          child: Text('worldx', style: TextStyle(fontSize: 20)),
          width: 120,
          height: 100,
        ),
        Container(
          color: Colors.blue,
          child: Text('abcx', style: TextStyle(fontSize: 20)),
          width: 90,
          height: 80,
        ),
        Container(
          color: Colors.orange,
          child: Text('cbax', style: TextStyle(fontSize: 20)),
          width: 50,
          height: 120,
        )
      ],
    );
  }
}

// Row基本使用
class RowDemo1 extends StatelessWidget {
  const RowDemo1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /**
     * Row特点:
     *  - 水平方向尽可能占据比较大的空间
     *    * 水平方向也是希望包裹内容, 那么设置mainAxisSize = min
     *  - 垂直方向包裹内容
     * MainAxisAlignment:
     *  - start: 主轴的开始位置挨个摆放元素(默认值)
     *  - end: 主轴的结束位置挨个摆放元素
     *  - center: 主轴的中心点对齐
     *  - spaceBetween: 左右两边的间距为0, 其它元素之间平分间距
     *  - spaceAround: 左右两边的间距是其它元素之间的间距的一半
     *  - spaceEvenly: 所有的间距平分空间
     * CrossAxisAlignment:
     *  - start: 交叉轴的起始位置对齐
     *  - end: 交叉轴的结束位置对齐
     *  - center: 中心点对齐(默认值)
     *  - baseline: 基线对齐(必须有文本的时候才起效果)
     *  - stretch: 先Row占据交叉轴尽可能大的空间, 将所有的子Widget交叉轴的高度, 拉伸到最大
     */
    return Container(
      height: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        textBaseline: TextBaseline.ideographic,
        children: [
          Container(
            color: Colors.red,
            child: Text(
              'hellox',
              style: TextStyle(fontSize: 20),
            ),
            width: 80,
            height: 60,
          ),
          Container(
            color: Colors.greenAccent,
            child: Text('worldx', style: TextStyle(fontSize: 20)),
            width: 120,
            height: 100,
          ),
          Container(
            color: Colors.blue,
            child: Text('abcx', style: TextStyle(fontSize: 20)),
            width: 90,
            height: 80,
          ),
          Container(
            color: Colors.orange,
            child: Text('cbax', style: TextStyle(fontSize: 20)),
            width: 50,
            height: 120,
          )
        ],
      ),
    );
  }
}
