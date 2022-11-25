main(List<String> args){
  // String  name = 'keqian';
  // int age = 18;
  // double height = 1.88;
  // print('${name},${age},${height}');

  // 定义的变量可以修改值, 但是不能赋值其他类型
  String content = 'hello dart';
  content = 'hello world';
  // content = 11; //错误

  // dynamic name ='keqian';
  // print(name.runtimeType);
  // name = 18;
  // print(name.runtimeType);

  String getName(){
    return 'keqian';
  }

  // const在赋值时, 赋值的内容必须是在编译期间就确定下来的
  // const name =getName();// 错误做法
  // final在赋值时, 可以动态获取, 比如赋值一个函数
  final name  =getName(); //正确做法
  print(name);

  // 首先, const是不可以赋值为DateTime.now()
  // const time = DateTime.now();
  // 其次, final一旦被赋值后就有确定的结果, 不会再次赋值
  final time = DateTime.now();
  print(time);


  // 字符串和数字之间的转化:
  var one = int.parse('111');
  print(one);
  var two = double.parse('12.22');
  print('$two,${two.runtimeType}');

  //数字转字符串
  var num1 = 123;
  var num1str = num1.toString();
  print('$num1str,${num1str.runtimeType}');

  //  todo Dart中不能判断非0即真, 或者非空即真
  // var message = 'hellow dart'
  // 错误的写法
  // if(message){
  //   print(message)
  // }
}
