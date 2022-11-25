class Dog {
  String color;
  Dog(this.color);

  set setColor(String color)=>this.color= color;
  String get getColor =>color;
}

main(){
  final d = Dog('red');
  d.setColor='green';
  print(d.getColor);
}