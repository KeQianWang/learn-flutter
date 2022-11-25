class Animal{
  // todo late 关键字主要用于延迟初始化  //当没有构造函数的时候用late,在实例话的时候去传入参数
  late String _name;   //私有属性
  late int age;
  //默认构造函数的简写
  Animal(this._name,this.age);

  void printInfo(){
    print("${this._name}----${this.age}");
  }

  String getName(){
    return this._name;
  }
  void _run(){
    print('这是一个私有方法');
  }

  execRun(){
    this._run();  //类里面方法的相互调用
  }
}
main(){
  Animal a=new Animal('小狗', 3);

  print(a._name); //错误：类外部没法访问私有属性
  a.printInfo();

  a._run(); //错误：类外部没法访问私有方法

  print(a.getName());   //正确：通过公有方法访问私有属性

  a.execRun();   //正确：间接的调用私有方法
}

