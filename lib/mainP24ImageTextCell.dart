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
          leading: Image.network('https://resource.gximg.cn/b21f0b_lnyhok8613.png'),
          title: Text('我的附件拉丝机菲拉斯就阿拉法进啦手机卡打发收垃圾打发了手机到啦拉法基撒冷冻机房'),
          // trailing: Icon(Icons.arrow_right),
        ),
        Divider(),

        ListTile(
          // leading: Image.network('https://resource.gximg.cn/b21f0b_lnyhok8613.png'),
          title: Text('我的附件拉丝机菲拉斯就阿拉法进啦手机卡打发收垃圾打发了手机到啦拉法基撒冷冻机房'),
          trailing: Image.network('https://resource.gximg.cn/b21f0b_lnyhok8613.png'),
        ),
        Divider(),

        ListTile(
          leading: Image.network('https://resource.gximg.cn/b21f0b_lnyhok8613.png'),
          title: Text('我的附件拉丝机菲拉斯就阿拉法进啦手机卡打发收垃圾打发了手机到啦拉法基撒冷冻机房'),
          trailing: Image.network('https://resource.gximg.cn/b21f0b_lnyhok8613.png'),
        ),
        Divider(),

      ],
    );
  }
}
