import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Controller();

  _textField({String labelText, onChanged, String Function() errorText}) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        errorText: errorText == null ? null : errorText(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Observer(builder: (_) {
              return _textField(
                errorText: controller.validateName,
                labelText: "Name",
                onChanged: controller.client.changeName,
              );
            }),
            SizedBox(
              height: 20,
            ),
            Observer(builder: (_) {
              return _textField(
                errorText: controller.validateEmail,
                labelText: "Email",
                onChanged: controller.client.changeEmail,
              );
            }),
            SizedBox(
              height: 50,
            ),
            Observer(builder: (_) {
              return ElevatedButton(
                onPressed: controller.isValid ? () {} : null,
                child: Text("Salvar"),
              );
            }),
          ],
        ),
      ),
    );
  }
}
