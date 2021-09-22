import 'package:flutter/material.dart';
import 'package:new_bytebank/database/dao/contact_dao.dart';
import 'package:new_bytebank/models/contact.dart';

class ContactsForm extends StatefulWidget {
  const ContactsForm({Key? key}) : super(key: key);

  @override
  _ContactsFormState createState() => _ContactsFormState();
}

class _ContactsFormState extends State<ContactsForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _accountNumberController =
      TextEditingController();
  final ContactDao _dao = ContactDao();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novo Contato'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Nome Completo',
                ),
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: _accountNumberController,
                decoration: InputDecoration(
                  labelText: 'Número da Conta',
                ),
                style: TextStyle(
                  fontSize: 24.0,
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    final String name = _nameController.text;
                    final int? accountNumber =
                        int.tryParse(_accountNumberController.text);
                    final Contact newContact = Contact(0, name, accountNumber!);
                    _dao.save(newContact).then(
                      (id) => Navigator.pop(context, newContact),
                    );
                  },
                  child: Text('Criar'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
