import 'package:flutter/material.dart';
import 'svFont.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.yellow,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text('导航22R标题'),
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

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        height: 220,

        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(10),
          children:[
            Container(
              width: 120,
              decoration: BoxDecoration(color: Colors.transparent),
              child: Column(
                children: [
                  Container(
                      width: 100,
                      height: 100,
                      child: Image.network('https://resource.gximg.cn/e7599c_eR4iHtKdPa.png', fit:BoxFit.cover )
                  ),
                  // Image.network('https://resource.gximg.cn/e7599c_eR4iHtKdPa.png'),
                  Text('价格', style: TextStyle(fontSize: 30),)
                ],
              ),
            ),
            Container(
              width: 120,
              decoration: BoxDecoration(color: Colors.transparent),
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.network('https://resource.gximg.cn/fb56f7_lm4nua6k5.png', fit:BoxFit.cover )
                  ),
                  // Image.network('https://resource.gximg.cn/fb56f7_lm4nua6k5.png'),
                  Text('价格')
                ],
              ),
            ),
            Container(
              width: 120,
              decoration: BoxDecoration(color: Colors.transparent),
              child: Column(
                children: [
                  Container(
                      width: 100,
                      height: 100,
                      child: Image.network('https://resource.gximg.cn/2f0d5a_lno2ol0x2.png', fit:BoxFit.cover )
                  ),
                  // Image.network('https://resource.gximg.cn/2f0d5a_lno2ol0x2.png'),
                  Text('价格')
                ],
              ),
            ),
            Container(
              width: 120,
              decoration: BoxDecoration(color: Colors.transparent),
              child: Column(
                children: [
                  Container(
                      width: 100,
                      height: 100,
                      child: Image.network('https://resource.gximg.cn/28baac_rK6ChpDahw.png', fit:BoxFit.cover )
                  ),
                  // Image.network('https://resource.gximg.cn/28baac_rK6ChpDahw.png'),
                  Text('价格')
                ],
              ),
            ),
          ],
        )
      );


  }
}
