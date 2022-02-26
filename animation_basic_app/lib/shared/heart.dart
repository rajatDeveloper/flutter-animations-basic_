import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  @override
  _HeartState createState() => _HeartState();
}

class _HeartState extends State<Heart> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _colorAnimation;
  bool _isFav = false;
  late Animation _sizeAnimation;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(duration: Duration(microseconds: 600), vsync: this);

    _colorAnimation =
        ColorTween(begin: Colors.grey, end: Colors.red).animate(_controller);

    _sizeAnimation = TweenSequence([
      TweenSequenceItem(
          tween: Tween(
            begin: 30.0,
            end: 50.0,
          ),
          weight: 50.0),
      TweenSequenceItem(
          tween: Tween(
            begin: 50.0,
            end: 30.0,
          ),
          weight: 50.0),
    ]).animate(_controller);

    _controller.addListener(() {
      // print(_controller.value);
      // print(_colorAnimation.value);
    });

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          _isFav = true;
        });
      }
      if (status == AnimationStatus.dismissed) {
        setState(() {
          _isFav = false;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (
          BuildContext context,
          _,
        ) {
          return IconButton(
            icon: Icon(
              Icons.favorite,
              color: _colorAnimation.value,
              // size: _sizeAnimation.value,
              size: _isFav ? 50 : 30,
            ),
            onPressed: () {
              _isFav ? _controller.reverse() : _controller.forward();
              // _controller.reverse();
            },
          );
        });
  }
}
