import 'package:flutter/material.dart';
// 备份
void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(title: const Text("这是标题"), backgroundColor: Colors.red),
    body: MyApp()
  )));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text('你好啊111啊啊',
            textDirection: TextDirection.ltr,
            style: TextStyle(
                color: Color.fromRGBO(200, 200, 20, 0.7), fontSize: 40)));
  }
}
