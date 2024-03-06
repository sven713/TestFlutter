import 'package:flutter/material.dart';
import 'svFont.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.yellow,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text('导航标题'),
          backgroundColor:Colors.blue
      ),
      body: Column(

        children: [
          Expanded(child: MyApp())
          ],
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
        Image.network('https://resource.gximg.cn/b21f0b_lnyhok8613.png'),
        Container(
          child: Text('标题', textAlign: TextAlign.center, style: TextStyle(fontSize: 22),),
        ),

        Image.network('https://resource.gximg.cn/fb56f7_lm4nua6k5.png'),
        Container(
          child: Text('标题', textAlign: TextAlign.center, style: TextStyle(fontSize: 22),),
        ),
        Image.network('https://resource.gximg.cn/f0b694_fMQWmtKzP7.jpg'),
        Container(
          child: Text('标题', textAlign: TextAlign.center, style: TextStyle(fontSize: 22),),
        ),
      ],
    );
  }
}
