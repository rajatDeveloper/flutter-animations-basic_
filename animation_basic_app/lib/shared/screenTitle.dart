import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String text;

  const ScreenTitle({required this.text});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        tween: Tween<double>(begin: 0, end: 1),
        duration: Duration(seconds: 1),
        curve: Curves.easeInQuart,
        builder: (BuildContext context, double _val, Widget? child) {
          return Opacity(
            opacity: _val,
            child: Padding(
              padding: EdgeInsets.only(top: _val * 35),
              child: child,
            ),
          );
        });
  }
}
