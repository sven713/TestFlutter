import 'package:flutter/material.dart';
import '../search.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('分类页'),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context){
                  return SearchPage();
                })
            );
          }, child: Text('去搜索'))
        ],
      ),
    );
  }
}
