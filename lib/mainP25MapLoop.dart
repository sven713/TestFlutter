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
          // Expanded(child: MyApp())
          MyApp()
        ],
      ),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  List<Widget> _initArray() {
    List<Widget> arr = [];
    for (var i = 0; i < sourceArr.length; i++) {
      arr.add(ListTile(
        leading: Image.network(sourceArr[i]['image']),
        title: Text(sourceArr[i]['title']),
        subtitle: Text(sourceArr[i]['intro']),
        
      ));
    }

    return arr;
  }

  List<Widget> _mapInitArray(){
    var tempList = sourceArr.map((value)  {
      return ListTile(
        leading: Image.network(value['image']),
        title: Text(value['title']),
        subtitle: Text(value['intro']),
      );
    });
    print(tempList);
    print(tempList.toList());
    // return tempList;
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    // print(sourceArr);
    return SizedBox(
        height: 220, child: ListView(shrinkWrap: true,

        // children: _initArray()

      children: _mapInitArray(),
    ));
  }
}
