import 'package:flutter/material.dart';
// 练习1
void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(title: const Text("这是标题"), backgroundColor: Colors.red),
    body: const Center(
        child: Text('你好啊啊啊',
            textDirection: TextDirection.ltr,
            style: TextStyle(
                color: Color.fromRGBO(200, 200, 20, 0.7), fontSize: 40))),
  )));
}
