

class Student {
  String name = 'keqian';
  int age = 18;
  static String time = '9点';

  study(){
    print('study');
  }

  static attendClass (){
    print('去上课');
  }
}

main(){
  Student st = Student();
  st.name = 'wang';
  st.age = 13;
  Student.time = '8点';
  st.study();
  Student.attendClass();
  print(Student.time);
  print(st.name);
}