import 'package:flutter/material.dart';
import 'package:flutter_dinosaur/dino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Dinosaur',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Dino dino = Dino();
  double runDistance = 0;
  @override
  Widget build(BuildContext context) {
    Rect dinoRect = dino.getRect(MediaQuery.of(context).size, runDistance);
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            child: dino.render(),
            left: dinoRect.left,
            top: dinoRect.top,
            width: dinoRect.width,
            height: dinoRect.height,
          )
        ],
      ),
    );
  }
}
