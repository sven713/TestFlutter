import 'package:flutter/material.dart';
import 'package:flutterdemo001/res/fake.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.yellow,
    ),
    home: Tabs()
  ));
}




class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIdx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('导航1R标题'), backgroundColor: Colors.blue),
      body: Text('文案'),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIdx,
        onTap: (index){
          setState(() {
            _currentIdx = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
              label: '首页'
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home),
              label: '分类'
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home),
              label: '设置'
          ),
        ],
      ),
    );
  }
}
