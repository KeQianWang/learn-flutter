
class Person {
  String name = '张三';
  num age = 20;

  Person(this.name,this.age);

  Person.xxx(this.name,this.age);

  void printInfo(){
    print('${this.name}-----${this.age}');
  }

  work(){
    print("${this.name}在工作...");
  }
}

class Web extends Person {
  String sex;
  Web(String name,num age,this.sex):super.xxx(name,age);

  @override
  void printInfo(){
    print('${this.name}-----${this.sex}');
  }

  run(){
    print('run');
    super.work();
  }
}

main(){
  Web w = Web('keqian',20,"男");
  w.run();
}