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
      body: HomeContent(),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // todo ListView.separated添加分割线参数
    return ListView.separated(
      itemBuilder: (BuildContext context, int index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Icon(Icons.people),
            trailing: Icon(Icons.delete),
            title: Text("联系人${index + 1}"),
            subtitle: Text("联系人电话号码:18866665555"),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index){
        return Divider(
          color: Colors.red,
          height: 30,
          indent: 30,
          endIndent: 30,
          thickness: 10,
        );
      },
      itemCount: 100,
    );
  }
}

class LIstViewBuilderDemo extends StatelessWidget {
  const LIstViewBuilderDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //todo 常用 ListView build 会在真正需要的时候去创建子Widget，而不是一开始就全部初始化好
    return ListView.builder(
        itemCount: 100,
        itemExtent: 80,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.people),
            trailing: Icon(Icons.delete),
            title: Text("联系人${index + 1}"),
            subtitle: Text("联系人电话号码:18866665555"),
          );
        });
  }
}

class ListViewDemo1 extends StatelessWidget {
  const ListViewDemo1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(100, (index) {
        return ListTile(
          leading: Icon(Icons.people),
          trailing: Icon(Icons.delete),
          title: Text("联系人${index + 1}"),
          subtitle: Text("联系人电话号码:18866665555"),
        );
      }),
    );
  }
}
