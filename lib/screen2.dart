import 'package:flutter/material.dart';
import 'package:mc/w/w1.dart';
import 'package:mc/w/w2.dart';
import 'package:mc/main.dart';

class Screen2 extends StatefulWidget {
  Screen2();

  @override
  _MyScreen2State createState() => _MyScreen2State();
}

class _MyScreen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
          return MyApp();
          }));

        },
      child: P(),
    ));
  }
}

class P extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> list = [W1(), W2()];
    final controller = PageController(
      initialPage: 1,
    );
    return PageView.builder(
      controller: controller,
      itemBuilder: (context, postion) => list[postion],
      itemCount: list.length,
    );
  }
}
