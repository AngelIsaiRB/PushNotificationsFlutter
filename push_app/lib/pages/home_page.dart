import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('push app'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World!! pag 1'),
          ),
        ),
      );
  }
}