import 'package:flutter/material.dart';

class MultiLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text("MultiLayout"),
        ),
        body: Row(
          children: <Widget>[
            Container(
              width: screenWidth,
              height: screenHeight,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      height: screenWidth / 6,
                      width: screenWidth / 6,
                      color: Colors.blueAccent,
                    ),
                  ),
                  Positioned(
                    left: screenWidth/2,
                    top: screenHeight/8*3,
                                      child: Container(
                      height: screenWidth / 6,
                      width: screenWidth / 6,
                      color: Colors.greenAccent,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                                      child: Container(
                      height: screenWidth / 6,
                      width: screenWidth / 6,
                      color: Colors.orangeAccent,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
