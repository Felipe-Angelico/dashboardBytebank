import 'package:flutter/material.dart';

void main() {
  runApp(BytebankApp());
}

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
        ),
        body: Column(
          children: <Widget>[
            Image.asset('images/bytebank_logo.png'),
            Container(
              width: 150,
              height: 100,
              color: Colors.green[900],
              child: Column(
                children: <Widget>[
                  Icon(Icons.people),
                  Text('Contatos'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
