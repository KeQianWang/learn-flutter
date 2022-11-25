main(List<String> args){


// 命名可选参数
  printInfo1(String name, {required int age,  double height=10.9}) {
    print('name=$name age=$age height=$height');
  }

// 调用printInfo1函数
  printInfo1('why', age: 18); // name=why age=18 height=1.88


// 定义位置可选参数
  printInfo2(String name, [int? age, double? height]) {
    print('name=$name age=$age height=$height');
  }

// 调用printInfo2函数
  printInfo2('why', 18); // name=why age=18 height=1.88
}



