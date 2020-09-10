import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('push app'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World!!'),
          ),
        ),
      );
  }
}