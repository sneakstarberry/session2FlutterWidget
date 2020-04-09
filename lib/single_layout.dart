import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';

class SingleLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SingleLayout"),
      ),
      body: Center(
        child: Text(
          '안녕하세요', style: TextStyle(fontSize: 40)
        ),
      ),
    );
  }
}
