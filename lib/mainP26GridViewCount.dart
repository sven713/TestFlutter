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

  @override
  Widget build(BuildContext context) {
    // print(sourceArr);

    return GridView.count(
      crossAxisCount: 3,
      children: [
        Icon(Icons.home),
        Icon(Icons.home),
        Icon(Icons.home),
        Icon(Icons.home),
        Icon(Icons.home),
        Icon(Icons.home),
        Icon(Icons.home),
        Icon(Icons.home),
        Icon(Icons.home),
        Icon(Icons.home),
        Icon(Icons.home),
      ],
    );
  }
}
