import 'package:flutter/material.dart';

class HYDetailPage extends StatelessWidget {
  static const String routeName = "/detail";

  final String _message;

  HYDetailPage(this._message);

  @override
  Widget build(BuildContext context) {
    return WillPopScope( // todo 监听返回按钮的点击（给Scaffold包裹一个WillPopScope）
      // 当返回为true时,可以自动返回(flutter帮助我们执行返回操作)
      // 当返回为false时, 自行写返回代码
      onWillPop: () {
        _backToHome(context);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("详情页"),
// todo 或者着修改自带返回的按钮
//        leading: IconButton(
//          icon: Icon(Icons.arrow_back),
//          onPressed: () => _backToHome(context),
//        ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(_message, style: TextStyle(fontSize: 20),),
              TextButton(
                child: Text("回到首页"),
                onPressed: () => _backToHome(context),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _backToHome(BuildContext context) {
    Navigator.of(context).pop(_message);
  }
}
