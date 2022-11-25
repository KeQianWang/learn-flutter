main(List<String> args){
  var p1 = const Person('keqian',18);
  var p2 = const Person('keqian',18);
  print(identical(p1, p2));
}
// 注意一：拥有常量构造方法的类中，所有的成员变量必须是final修饰的.
// 注意二: 为了可以通过常量构造方法，创建出相同的对象，不再使用 new关键字，而是使用const关键字
// 如果是将结果赋值给const修饰的标识符时，const可以省略.
class Person{
  final String name;
  final int age;

  //todo 常量构造函数
  const Person(this.name,this.age);
}