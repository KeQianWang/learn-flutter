

import 'package:flutter/material.dart';

main()=>runApp(Myapp());

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

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
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FloatingActionButton(
            child: Text('+'),
            onPressed: ()=>print('FloatingActionButton click')
        ),
        TextButton(
          child: Text("normal"),
          onPressed: ()=>print('TextButton click'),
        ),
        IconButton(
            icon: Icon(Icons.thumb_up),
            onPressed: ()=>print('IconButton click')
        ),
        ElevatedButton(
            child: Text("同意协议",style: TextStyle(color: Colors.red)),
            style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),//设置圆角
                elevation:1.9 ),//控制阴影
            onPressed: ()=>print('ElevatedButton click')
        ),
        ElevatedButton.icon(
          icon: Icon(Icons.send),
          label: Text("发送"),
          style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)), ),//设置圆角
          onPressed:  ()=>print('ElevatedButton  icon click'),
        ),
      ],
    );
  }
}
