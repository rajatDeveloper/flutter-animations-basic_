import 'package:flutter/material.dart';

class SandBox extends StatefulWidget {
  SandBox({Key? key}) : super(key: key);

  @override
  State<SandBox> createState() => _SandBoxState();
}

class _SandBoxState extends State<SandBox> {
  double _opacity = 1.0;
  double _margin = 0;
  double _width = 200;
  Color _color = Color.fromARGB(255, 82, 48, 48);
  Color _buttonColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedContainer(
      margin: EdgeInsets.all(_margin),
      width: _width,
      color: _color,
      duration: Duration(seconds: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(_buttonColor)),
              onPressed: () {
                setState(() {
                  _margin = 50;
                  _color = Color.fromARGB(255, 58, 54, 54);
                  _buttonColor = Colors.red;
                });
              },
              child: Text("margin animation")),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(_buttonColor)),
              onPressed: () {
                setState(() {
                  _width = 300;
                  _color = Color.fromARGB(255, 58, 54, 54);
                  _buttonColor = Colors.red;
                });
              },
              child: Text("width animation")),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _width = 200;
                  _margin = 0;
                  _color = Color.fromARGB(255, 82, 48, 48);
                  _buttonColor = Colors.blue;
                });
              },
              child: Text("back")),
          TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(_buttonColor)),
              onPressed: () {
                setState(() {
                  _opacity = 0.4;
                });
              },
              child: Text(
                "opacity",
                style: TextStyle(color: Colors.white),
              )),
          AnimatedOpacity(
            opacity: _opacity,
            duration: Duration(seconds: 1),
            child: Text(
              "Opacity",
              textScaleFactor: 1.8,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    ));
  }
}
