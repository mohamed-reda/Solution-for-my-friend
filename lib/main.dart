import 'package:flutter/material.dart';
import 'package:mc/w/w1.dart';
import 'package:mc/w/w2.dart';
import 'package:mc/screen2.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
              return Screen2();
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
      initialPage: 0,
    );
    return PageView.builder(
      controller: controller,
      itemBuilder: (context, postion) => list[postion],
      itemCount: list.length,
    );
  }
  }
