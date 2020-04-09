import 'package:flutter/material.dart';

class FlexApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flexible")
      ),
      body: Row(
        children: [
          BlueBox(flex: "none",),
          Flexible(
            fit: FlexFit.loose,
            flex: 3,
            child: BlueBox(flex:"3")
          ),
          Flexible(
            fit: FlexFit.loose,
            flex: 1,
            child: BlueBox(flex:"1"),
          ),
        ],
      ),
    );
  }
}

class BlueBox extends StatelessWidget {
  final String flex;
  BlueBox({this.flex});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
        child: Center(child: Text(flex, style: TextStyle(color:Colors.white)))
    );
  }
}
