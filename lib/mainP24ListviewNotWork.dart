import 'package:flutter/material.dart';
import 'svFont.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.yellow,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text('导航标题?'),
          backgroundColor:Colors.blue
      ),
      body: Column(
        children: [MyApp()],
      ),
    ),
  ));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(Icons.search, color: Colors.red, size: 50,),
        SizedBox(height: 40,),
        Icon(Icons.home, color: Colors.red, size: 50,),
        SizedBox(height: 40,),
        Icon(SvenIcon.chemist, color: Colors.red, size: 80,),
        SizedBox(height: 40,),
        Icon(SvenIcon.find, color: Colors.pink, size: 80,),
        SizedBox(height: 40,),
        Icon(SvenIcon.sport, color: Colors.brown, size: 80,),


        SizedBox(height: 40,),
        Icon(SvenIcon.wind, color: Colors.brown, size: 80,),

        SizedBox(height: 40,),
        Icon(SvenIcon.gift, color: Colors.green, size: 80,),

        SizedBox(height: 40,),
        Icon(SvenIcon.collection, color: Colors.green, size: 80,),
      ],
    );
  }
}
