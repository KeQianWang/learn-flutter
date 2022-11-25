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

class HomwPage extends StatefulWidget {
  const HomwPage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomwPage> createState() => _HomwPageState();
}

/**
 * 两种方式可以监听:
 *  controller:
 *    1.可以设置默认值offset
 *    2.监听滚动, 也可以监听滚动的位置
 *  NotificationListener
 *    1.开始滚动和结束滚动
 */

class _HomwPageState extends State<HomwPage> {
  ScrollController _controller = ScrollController();
  bool _isShowFloatingBtn = false;

  @override
  void initState() {
    _controller.addListener(() {
      setState(() {
        _isShowFloatingBtn = _controller.offset >= 1000;
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('king'),
      ),
      body: ListView.builder(
        itemCount: 100,
        itemExtent: 60,
        controller: _controller,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
              title:  ListTile(
                leading: Icon(Icons.people),
                trailing: Icon(Icons.delete),
                title: Text("联系人${index + 1}"),
                subtitle: Text("联系人电话号码:18866665555"),
              )
          );
        },
      ),
      floatingActionButton: _isShowFloatingBtn ? FloatingActionButton(
          child: Icon(Icons.arrow_upward),
          onPressed:(){
            _controller.animateTo(0, duration: Duration(seconds: 1), curve: Curves.easeIn);
          }
      ):null,
    );
  }
}


