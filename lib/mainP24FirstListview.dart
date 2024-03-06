import 'package:flutter/material.dart';
import 'svFont.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.yellow,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text('导航2标题'),
          backgroundColor:Colors.blue
      ),
      body: Column(
        // children: [
        //
        //   Expanded(
        //     child: Container(
        //       constraints: BoxConstraints.expand(),
        //       child: MyApp(),
        //     ),
        //   ),
        //
        // ],
        children: [MyApp()],
      ),
    ),
  ));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children:[
        ListTile(title: Text('列表cell'),),
        Divider(),
        ListTile(title: Text('列表cell'),),
        Divider(),
        ListTile(title: Text('列表cell'),),
        Divider(),
        ListTile(title: Text('列表cell'),),
        Divider(),
        ListTile(title: Text('列表cell'),),
        Divider(),
        ListTile(title: Text('列表cell'),),
        Divider(),
        ListTile(title: Text('列表cell'),),
        Divider(),
        ListTile(title: Text('列表cell'),),
        Divider(),
        ListTile(title: Text('列表cell'),),
        Divider(),
        ListTile(title: Text('列表cell'),),
        Divider(),
        ListTile(title: Text('列表cell'),),
      ],
    );
  }
}
