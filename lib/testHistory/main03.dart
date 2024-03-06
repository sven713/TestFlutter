import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar:
              AppBar(title: const Text("这是标题"), backgroundColor: Colors.red),
          body: const Column(
            children: [
              MyApp(),
            MyButton()
            ],
          ))));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.bottomLeft,
        width: 200,
        height: 300,
        // color: Colors.pink,
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(
            color: Colors.deepOrange,
            width: 10,
          ),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [BoxShadow(color: Colors.amber, blurRadius: 20)],
          gradient: const RadialGradient(colors: [Colors.white, Colors.black])
        ),
        child: const Text(
          'text2',
          style: TextStyle(color: Colors.amber, fontSize: 40),
        ),
      );
    // );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 60,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
      decoration:  BoxDecoration(
        color: Colors.red,
        borderRadius:  BorderRadius.circular(40)
      ),
      // alignment: Alignment.center,
      child:  Text('按1钮',style: TextStyle(color: Colors.white, fontSize: 20),),
    );
  }
}
