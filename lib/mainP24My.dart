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
        ListTile(
          leading: Icon(Icons.people, color: Colors.black,),
          title: Text('我的'),
          trailing: Icon(Icons.arrow_right),
        ),
        Divider(),

        ListTile(
          leading: Icon(Icons.favorite, color: Colors.black,),
          title: Text('收藏'),
          trailing: Icon(Icons.arrow_right),
        ),
        Divider(),

      ],
    );
  }
}
