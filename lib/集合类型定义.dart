main(List<String> args){
    //list定义
    // 1.使用类型推导定义
    var letter = ['a','b'];
    print(letter.length);

    print('$letter,${letter.runtimeType}');
    // 2.明确指定类型
    List<int> numbers = [1,2,3];
    numbers.add(4);
    print(numbers.length);
    // List根据index删除元素
    numbers.removeAt(3);
    numbers.remove(1);
    print('$numbers ${numbers.runtimeType}');


    // Set的定义
    // 1.使用类型推导定义
    var lettersSet = {'a', 'b', 'c', 'd'};
    print('$lettersSet ${lettersSet.runtimeType}');

    // 2.明确指定类型
    Set<int> numbersSet = {1, 2, 3, 4};
    numbersSet.remove(1);
    print('$numbersSet ${numbersSet.runtimeType}');


    // Map的定义
    // 1.使用类型推导定义
    var infoMap1 = {'name':'keqian','age':18};
    print(infoMap1.entries);
    print(infoMap1.keys);
    print(infoMap1.values);
    print('$infoMap1,${infoMap1.runtimeType}');

    //2.明确指定类型
    Map<String,Object> infoMap2 ={'height': 1.88, 'address': '北京市'};
    print('$infoMap2 ${infoMap2.runtimeType}');
  
}