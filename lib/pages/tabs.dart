import 'package:flutter/material.dart';
import 'package:flutterdemo001/pages/tabs/home.dart';

import './tabs/setting.dart';
import './tabs/category.dart';
// import 'package:flutterdemo001/pages/tabs/setting.dart;
// import 'package:flutterdemo001/pages/tabs/category.dart;



class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIdx = 0;
  List<Widget> _pages = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
    CategoryPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('导航1R标题'), backgroundColor: Colors.blue),
      body: _pages[_currentIdx],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIdx,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        onTap: (index) {
          setState(() {
            _currentIdx = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '11首页'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '分类'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '设置'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '第四'),
        ],
      ),
    );
  }
}
