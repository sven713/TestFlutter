import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('导航1标题'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [Text('内111容'), MyApp(),SizedBox(height: 20,) ,Circular(), ClipImage(),LocalImage()],
      ),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.yellow,
      ),
      child: (Image.network(
        'https://resource.gximg.cn/6d606f_la26zfdc2.jpg',
        fit: BoxFit.fill,
        // scale: 29,
        // repeat: ImageRepeat.repeatY,
      )),
    );
  }
}

// todo: 圆形组件

class Circular extends StatelessWidget {
  const Circular({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: NetworkImage(
                  'https://resource.gximg.cn/6d606f_la26zfdc2.jpg'),
              fit: BoxFit.fill),
          color: Colors.amber,
          borderRadius: BorderRadius.circular(50)),
    );
  }
}

class ClipImage extends StatelessWidget {
  const ClipImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        child: Image.network(
          'https://resource.gximg.cn/6d606f_la26zfdc2.jpg',
          width: 150,
          height: 150,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}


class LocalImage extends StatelessWidget {
  const LocalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.red
      ),
      child: Image.asset("images/imageTest.png", fit: BoxFit.fill,),
    );
  }
}
