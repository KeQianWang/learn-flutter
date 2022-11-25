import 'package:flutter/material.dart';

class HYAboutPage extends StatelessWidget {
  static const String routeName = "/about";

  @override
  Widget build(BuildContext context) {
    final String message = ModalRoute.of(context)?.settings.arguments as String;

    return WillPopScope(
      onWillPop: () {
        _backToHome(context);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("关于页"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(message),
              TextButton(
                child: Text("返回首页"),
                onPressed: ()=>_backToHome(context),
              )
            ],
          ),
        ),
      ),
    );
  }
  void _backToHome(BuildContext context) {
    Navigator.of(context).pop(ModalRoute.of(context)?.settings.arguments as String);
  }
}

