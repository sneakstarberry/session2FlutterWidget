import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import './count.dart';
import './single_layout.dart';
import './multi_layout.dart';
import 'Todo.dart';
import 'column.dart';
import 'flexible.dart';
import 'row.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TodoApp(),);
  }
}

// MyHomePage(title: 'Flutter Demo Home Page')
class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Dog("Katarina"),
            SizedBox(
              height: 8.0,
            ),
            Dog("Rocky"),
          ],
        ),
      ),
    );
  }
}

class Dog extends StatelessWidget {
  final String name;
  const Dog(this.name);
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.blueAccent,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(name),
      ),
    );
  }
}
