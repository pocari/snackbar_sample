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
        body: SnackbarPage(),
      ),
    );
  }
}

class SnackbarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          final snackbar = SnackBar(
            content: Text('Yay! A SnackBar!!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                print('snackbaraction on pressed');
              },
            ),
          );
          Scaffold.of(context).showSnackBar(snackbar);
        },
        child: Text('Show SnackBar'),
      ),
    );
  }
}
