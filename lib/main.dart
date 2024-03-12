import 'package:flutter/material.dart';
import 'package:flutterdemo001/res/fake.dart';
import './pages/tabs.dart';
void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.yellow,
    ),
    home: Tabs()
  ));
}

