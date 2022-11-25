mixin Runner {
  run(){
    print('跑步');
  }
}

mixin Flyer {
  fly(){
    print('飞');
  }
}

class Dog with Runner,Flyer{

}


main(){
  Dog d = Dog();
  d.run();
  d.fly();
}