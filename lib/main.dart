import 'package:flutter/material.dart';
import 'package:flutterdemo001/res/fake.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.yellow,
    ),
    home: Scaffold(
      appBar: AppBar(title: Text('导航1R标题'), backgroundColor: Colors.blue),
      body: Column(
        children: [
          Expanded(child: MyApp())
          // MyApp()
        ],
      ),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  List<Widget> _initArr() {
    List<Widget> res = [];
    for (var i = 0; i < 20; i++) {
      res.add(Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.pink),
        child: Text('范德萨发生$i'),
      ));
    }
    return res;
  }

  @override
  Widget build(BuildContext context) {
    // print(sourceArr);

    return GridView.extent(
        // crossAxisCount: 4,
        maxCrossAxisExtent: 130,
        children: _initArr(),
        padding: EdgeInsets.all(10), // 容器边框
        crossAxisSpacing: 10,
        mainAxisSpacing: 10);
  }
}
