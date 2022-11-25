abstract class Aniaml {
  eat();

  run();
  
  printInfo(){
    print('我是一个抽象类里面的普通方法');
  }
}

class Dog extends Aniaml {

  @override
  eat() {
    print('小狗吃骨头');
  }

  @override
  run() {
    print('小狗再跑');
  }
}

main(){
  Dog d = Dog();
  d.eat();
  d.run();
}