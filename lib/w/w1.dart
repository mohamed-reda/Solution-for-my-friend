import 'package:flutter/material.dart';

class W1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int i = 0;
    return Scaffold(
      appBar: AppBar (
        title: Text (
            'Flutter Demo'
        ),
      ),
      body: Center(
        child: Text('page one'),
      ),
    );
  }
}
