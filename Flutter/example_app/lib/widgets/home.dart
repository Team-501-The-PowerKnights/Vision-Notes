import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _buttonColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            onPressed: () => print("Here is something we are printing out!"),
            child: Text(
              "Button 1",
              style: TextStyle(color: Colors.white),
            ),
            color: Color.fromRGBO(255, 0, 0, 1),
          ),
          SizedBox(
            height: 100,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _buttonColor = Colors.red;
              });
            },
            child: Container(
              color: _buttonColor,
              height: 70,
              width: 70,
              child: Center(
                child: Text(
                  "World",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
