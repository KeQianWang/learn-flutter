import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.blueAccent
      ),
      home: Scaffold(
        appBar: AppBar(
            title: Text('King')
        ),
        body: MyCounterWidget(),
      ),
    );
  }
}

class MyCounterWidget extends StatefulWidget {
  @override
  State<MyCounterWidget> createState() => _MyCounterWidgetState();
}

class _MyCounterWidgetState extends State<MyCounterWidget> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  color: Colors.redAccent,
                  child: Text("+1", style: TextStyle(fontSize: 18, color: Colors.white),),
                  onPressed: () {
                    setState(() {
                      counter++;
                    });

                  },
                ),
                MaterialButton(
                  color: Colors.orangeAccent,
                  child: Text("-1", style: TextStyle(fontSize: 18, color: Colors.white),),
                  onPressed: () {
                    setState(() {
                      counter--;
                    });
                  },
                )
              ],
            ),
            Text("当前计数：$counter", style: TextStyle(fontSize: 30),)
          ],
        )
    );
  }
}







