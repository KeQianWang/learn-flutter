class Person{
  String name;
  int age;

  Person(this.name,this.age);

  @override
  String toString(){
    return 'name=$name,age=$age';
  }
}

main(List<String> args){
  var p1 =  Person('keqian', 18);
  print(p1.toString());
}