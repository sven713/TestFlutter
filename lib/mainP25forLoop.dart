import 'package:flutter/material.dart';
import 'svFont.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.yellow,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text('导航1R标题'),
          backgroundColor:Colors.blue
      ),
      body: Column(

        children: [
          // Expanded(child: MyApp())
          MyApp()
          ],
      ),
    ),
  ));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  List<Widget> _initArray(){
    List<Widget> arr = [];
    for(var i = 0; i  <5; i++){
      arr.add(ListTile(title: Text('xxxx---$i'),));
    }

    return arr;
  }

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        height: 220,

        child: ListView(
          shrinkWrap: true,
          children:
          // [
          //   // ListTile(title: Text('cell----'),),
          //   // ListTile(title: Text('cell----'),),
          //   // ListTile(title: Text('cell----'),),
          //
          // ],
          _initArray()
        )
      );


  }
}
