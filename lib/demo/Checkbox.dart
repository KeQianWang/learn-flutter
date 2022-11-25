import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text("keqin"),
            ),
            body:MyBodyWidget()
        ),
      )
  );
}
class MyBodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyStateWidget();
  }
}

class MyStateWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyContentBody();
  }
}

class MyContentBody extends State<MyStateWidget> {
  var flage = true;
  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Row(
          mainAxisAlignment:  MainAxisAlignment.center,
          children: [
            Checkbox(value: flage, onChanged: (value)=> {
              setState((){
                flage = value!;
              })
            }),
            const Text(
              "Hello World",
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 36),
            ),
          ],
        )
    );
  }
}


