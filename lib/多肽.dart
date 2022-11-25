
abstract class Animal {
  eat();
}
class Dog implements Animal{

  @override
  eat() {
    // TODO: implement eat
    print('狗去吃');
  }
  
  run(){
    print('狗跑');
  }

}

main(){
  Dog d = Dog();
  d.eat();
  d.run();
}