
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
  @override
  void work(){
    print("${this.name}在工作写代码");
  }

  run(){
    print('${this.name}-----${this.age}-----${this.sex}');
  }
}

main(){
  Web w = Web('keqian',20,"男");
  w.printInfo();
  w.work();
}