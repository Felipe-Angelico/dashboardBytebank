import 'package:flutter/material.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contatos'),
      ),
      body: ListView(children: <Widget>[
        Card(
            child: ListTile(
                title: Text('Fulano', style: TextStyle(fontSize: 24.0)),
                subtitle: Text('0000', style: TextStyle(fontSize: 16.0)))),
      ]),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
    );
  }
}
