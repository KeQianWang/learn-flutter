import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'viewmodel/counter_view_model.dart';

/**
 * 1.创建自己需要共享的数据
 * 2.在应用程序的顶层ChangeNotifierProvider
 * 3.在其它位置使用共享的数据
 *  > Provider.of: 当Provider中的数据发生改变时, Provider.of所在的Widget整个build方法都会重新构建
 *  > Consumer(相对推荐): 当Provider中的数据发生改变时, 执行重新执行Consumer的builder
 *  > Selector: 1.selector方法(作用,对原有的数据进行转换) 2.shouldRebuild(作用,要不要重新构建)
 */

main(){
  runApp(ChangeNotifierProvider(
    create: (ctx) => HYCounterViewModel(),
    child: MyApp(),
  )
  );
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'King',
      theme: ThemeData(
          primarySwatch: Colors.blue, splashColor: Colors.transparent),
      home: HYHomePage(),
    );
  }
}

class HYHomePage extends StatefulWidget {
  const HYHomePage({Key? key}) : super(key: key);

  @override
  State<HYHomePage> createState() => _HYHomePageState();
}

class _HYHomePageState extends State<HYHomePage> {
  int data = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InheritedWidget'),
      ),
      floatingActionButton: Selector<HYCounterViewModel,HYCounterViewModel>(
        selector: (ctx, counterVM) => counterVM,// todo 关键
        shouldRebuild: (prev, next) => false,
        builder: (ctx, counterVM, child) {
          print("floatingActionButton build方法被执行");
          return FloatingActionButton(
            child: child,
            onPressed: () {
              counterVM.counter += 1;
            },
          );
        },
        child: Icon(Icons.add),
      ),
      body:Center(
        child: Column(
          children: [
            HYShowData01(),
            HYShowData02()
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
class HYShowData01 extends StatefulWidget {
  const HYShowData01({Key? key}) : super(key: key);

  @override
  State<HYShowData01> createState() => _HYShowData01State();
}

class _HYShowData01State extends State<HYShowData01> {

  @override
  Widget build(BuildContext context) {
    // 3.在其它位置使用共享的数据
    int counter = Provider.of<HYCounterViewModel>(context).counter; //todo 另一种方法获取

    print("data01的build方法");
    return Card(
      color: Colors.red,
      child: Text("当前计数: $counter", style: TextStyle(fontSize: 30),),
    );
  }
}

class HYShowData02 extends StatelessWidget {
  const HYShowData02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("data02的build方法");
    return Container(
      color: Colors.blue,
      child: Consumer<HYCounterViewModel>( // todo 一种方法获取
        builder:(context, value,  child) {
          print("data02 Consumer build方法被执行");
          return Text("当前计数: ${value.counter}", style: TextStyle(fontSize: 30),);
        },
      ),
    );
  }
}




