import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool _mexicana = false;
  bool _brasileira = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('APP'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            CheckboxListTile(
              title: Text(
                'Comida Brasileira',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 18,
                ),
              ),
              secondary: Icon(Icons.fastfood),
              value: _brasileira,
              onChanged: (bool value) {
                setState(
                  () {
                    _brasileira = value;
                  },
                );
              },
            ),
            CheckboxListTile(
              title: Text(
                'Comida Mexicana',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 18,
                ),
              ),
              secondary: Icon(Icons.fastfood),
              value: _mexicana,
              onChanged: (bool value) {
                setState(
                  () {
                    _mexicana = value;
                  },
                );
              },
            ),
            RaisedButton(
              child: Text(
                'Salvar',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                print('Comida Br: ' + _brasileira.toString());
                print('Comida Mexicana: ' + _mexicana.toString());
              },
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
