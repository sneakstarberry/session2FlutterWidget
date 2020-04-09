import 'package:flutter/material.dart';

class RowApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Row"),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: screenWidth/6,
                width: screenWidth/6,
                color: Colors.blue,
              ),
              Container(
                height: screenWidth/6,
                width: screenWidth/6,
                color: Colors.green,
              ),
              Container(
                height: screenWidth/6,
                width: screenWidth/6,
                color: Colors.yellow,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                height: screenWidth/6,
                width: screenWidth/6,
                color: Colors.blue,
              ),
              Container(
                height: screenWidth/6,
                width: screenWidth/6,
                color: Colors.green,
              ),
              Container(
                height: screenWidth/6,
                width: screenWidth/6,
                color: Colors.yellow,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: screenWidth/6,
                width: screenWidth/6,
                color: Colors.blue,
              ),
              Container(
                height: screenWidth/6,
                width: screenWidth/6,
                color: Colors.green,
              ),
              Container(
                height: screenWidth/6,
                width: screenWidth/6,
                color: Colors.yellow,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                height: screenWidth/6,
                width: screenWidth/6,
                color: Colors.blue,
              ),
              Container(
                height: screenWidth/6,
                width: screenWidth/6,
                color: Colors.green[100],
              ),
              Container(
                height: screenWidth/6,
                width: screenWidth/6,
                color: Colors.yellow,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: screenWidth/6,
                width: screenWidth/6,
                color: Colors.blue,
              ),
              Container(
                height: screenWidth/6,
                width: screenWidth/6,
                color: Colors.green[300],
              ),
              Container(
                height: screenWidth/6,
                width: screenWidth/6,
                color: Colors.yellow,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: screenWidth/6,
                width: screenWidth/6,
                color: Colors.blue,
              ),
              Container(
                height: screenWidth/6,
                width: screenWidth/6,
                color: Colors.green,
              ),
              Container(
                height: screenWidth/6,
                width: screenWidth/6,
                color: Colors.yellow,
              ),
            ],
          ),
        ],
      )
    );
  }
}
