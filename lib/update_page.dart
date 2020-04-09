import 'package:flutter/material.dart';

class UpdatePage extends StatelessWidget {
  final TextEditingController textUpdateController;
  final void Function(String) onUpdated;
  final String text;

  UpdatePage({this.onUpdated, this.textUpdateController, this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: 36,
          width: 300,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: text
            ),
            controller: textUpdateController,
            onSubmitted: onUpdated,
          ),
        )
      )
    );
  }
}