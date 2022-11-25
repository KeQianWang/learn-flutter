
class Person {
    String name = '张三';
    num age = 20;

    Person(this.name,this.age);

    void printInfo(){
        print('${this.name}-----${this.age}');
    }
}

class Web extends Person {
    String sex;
    Web(String name,num age,this.sex):super(name,age);

    run(){
        print('${this.name}-----${this.age}-----${this.sex}');
    }
}

main(){
    Web w = Web('keqian',20,"男");
    w.run();
}