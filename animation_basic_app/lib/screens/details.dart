import 'package:flutter/material.dart';

import '../models/Trip.dart';
import '../shared/heart.dart';

class Details extends StatelessWidget {
  final Trip? trip;
  Details({@required this.trip});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ClipRRect(
                  child: Hero(
                tag: 'key-img-${trip!.img}',
                child: Image.asset(
                  'images/${trip!.img}',
                  height: 360,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              )),
              SizedBox(height: 30),
              ListTile(
                  title: Text(trip!.title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey[800])),
                  subtitle: Text(
                      '${trip!.nights} night stay for only \$${trip!.price}',
                      style: TextStyle(letterSpacing: 1)),
                  trailing: Heart()),
              Padding(
                  padding: EdgeInsets.all(18),
                  child: Text("data",
                      style: TextStyle(color: Colors.grey[600], height: 1.4))),
            ],
          ),
        ),
      ),
    );
  }
}
