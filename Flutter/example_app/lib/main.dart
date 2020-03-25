// Dart imports

// Flutter imports
import 'package:flutter/material.dart';

// Package imports

// Our App imports
import 'package:example_app/widgets/home.dart';

void main() => runApp(ExampleApp());

class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example App"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.place,
            ),
            onPressed: () => print("You pressed this button!"),
          ),
        ],
      ),
      body: Home(),
    );
  }
}
