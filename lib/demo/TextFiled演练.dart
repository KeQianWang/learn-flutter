import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text('king'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFiledDemo(),
        ],
      ),
    );
  }
}

class TextFiledDemo extends StatefulWidget {
  const TextFiledDemo({Key? key}) : super(key: key);

  @override
  State<TextFiledDemo> createState() => _TextFiledDemoState();
}

// decoration：用于设置输入框相关的样式
// icon：设置左边显示的图标
// labelText：在输入框上面显示一个提示的文本
// hintText：显示提示的占位文字
// border：输入框的边框，默认底部有一个边框，可以通过InputBorder.none删除掉
// filled：是否填充输入框，默认为false
// fillColor：输入框填充的颜色
class _TextFiledDemoState extends State<TextFiledDemo> {
  final usernameTextEditingController = TextEditingController();
  final passwordTextEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    usernameTextEditingController.text = "keqian";

    // 2.监听文本框
    usernameTextEditingController.addListener(() {
      print("textEditingController:${usernameTextEditingController.text}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: usernameTextEditingController,
          decoration: InputDecoration(
              icon: Icon(Icons.people),
              labelText: "username",
              hintText: "请输入用户名",
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.lightGreen),
          onChanged: (value) {
            print("onChanged:$value");
          },
          onSubmitted: (value) {
            print("onSubmitted:$value");
          },
        ),
        SizedBox(height: 10,),
        TextField(
          controller: passwordTextEditingController,
          decoration: InputDecoration(
              icon:Icon(Icons.password),
              labelText: "password",
              border: OutlineInputBorder()
          ),
        ),
        SizedBox(height: 10,),
        Container(
          width: double.infinity,
          height: 40,
          child: ElevatedButton(
            onPressed: () {
              final username =usernameTextEditingController.text;
              final password = passwordTextEditingController.text;
              print("账号:$username 密码:$password");
            },
            child: Text('登录',style: TextStyle(fontSize: 20,color: Colors.red),),
          ),
        )
      ],
    );
  }
}
