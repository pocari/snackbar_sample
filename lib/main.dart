import 'package:flutter/material.dart';

void main() => runApp(SnackBarDemo());

class SnackBarDemo extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBarDemo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('snackbar test'),
        ),
        body: Center(
          child: Text('hello, world'),
        ),
      ),
    );
  }
}
