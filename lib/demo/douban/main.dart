import 'package:flutter/material.dart';
import 'package:myapp/demo/douban/pages/main/main.dart';


main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "豆瓣电影",
      theme: ThemeData(colorScheme: Theme.of(context).colorScheme.copyWith(
        //要修改哪些参数，直接在这里修改，覆盖之前的设置
        primary: Colors.green,
      )),
      home: MainPage(),
    );
  }
}
