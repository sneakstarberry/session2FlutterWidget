import 'package:flutter/material.dart';


class ItemCounter extends StatefulWidget {
  final String name;
  ItemCounter({this.name});
  @override
  _ItemCounterState createState() => _ItemCounterState();
}

class _ItemCounterState extends State<ItemCounter> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Text(
      "${widget.name}: $count"
    );
  }
}