
import 'dart:math';

class Person {
  late String name;  // todo late 关键字主要用于延迟初始化  //当没有构造函数的时候用late,在实例话的时候去传入参数
  late int age;

  //默认构造函数的简写
  Person(this.name, this.age);

  // 命名构造函数
  Person.setInfo(this.name, this.age);

  Person.fromMap(Map<String, dynamic> map){
    this.name = map['name'];
    this.age = map['age'];
  }

  @override
  String toString() {
    return 'name=$name age=$age';
  }
}

main(List<String> args){
  Person p2= new Person.setInfo('keqian',18);   //命名构造函数
  print(p2);

  Person p3= new Person.fromMap({'name': 'kobe', 'age': 30});   //命名构造函数
  print(p3);
}

// 初始化列表
class Point {
  final num x;
  final num y;
  final num distance;

  // 错误写法
  // Point(this.x, this.y) {
  //   distance = sqrt(x * x + y * y);
  // }

  Point(this.x, this.y) :distance=sqrt(x * x + y * y);
}
