import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Example App",
      home: MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.red,
              ),
              child: Padding(
                padding: EdgeInsets.all(30),
                // padding: EdgeInsets.only(top: 100, right: 100),
                // padding: EdgeInsets.symmetric(horizontal: 100),
                child: Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
            ),
            MyButton(Colors.yellow, Colors.blue),
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatefulWidget {
  final Color _color1;
  final Color _color2;

  MyButton(this._color1, this._color2);

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool _green = false;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: _green ? widget._color1 : widget._color2,
      onPressed: () {
        setState(() {
          _green = !_green;
        });
      },
      child: Text(
        "Turn me ${_green ? "red" : "green"}",
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
