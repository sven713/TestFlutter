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

  List<Widget> _initArr() {
    List<Widget> res = [];
    for (var i = 0; i < sourceArr.length; i++) {
      res.add(Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              // color: Colors.pink,
              border: Border.all(color: Colors.black12)),
          child: Column(
            children: [
              Image.network(sourceArr[i]['image']),
              SizedBox(height: 10),
              Text(sourceArr[i]['title']),
            ],
          )));
    }
    return res;
  }

  Widget _initItem(context, i) {
    return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          // color: Colors.pink,
            border: Border.all(color: Colors.black12)),
        child: Column(
          children: [
            Image.network(sourceArr[i]['image']),
            SizedBox(height: 10),
            Text(sourceArr[i]['title']),
          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    // print(sourceArr);

    return GridView.builder(
        // crossAxisCount: 2,
        // // maxCrossAxisExtent: 130,
        // children: _initArr(),

        // crossAxisSpacing: 10,
        // childAspectRatio: 1.2,
        // mainAxisSpacing: 10
      padding: EdgeInsets.all(10), // 容器边框
      itemCount: sourceArr.length,
      gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        // crossAxisCount: 2,
        childAspectRatio: 1,
        maxCrossAxisExtent: 150
      ),
      itemBuilder: _initItem,
    );
  }
}
