import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  TextEditingController _textEditingController = TextEditingController();
  List lista = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App'),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Digite um valor',
              ),
              enabled: true,
              maxLength: 100,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
              //onChanged: (String e) {print(e);},
              onSubmitted: (String e) {
                print(e);
              },
              controller: _textEditingController,
            ),
          ),
          RaisedButton(
            child: Text('confirma'),
            color: Colors.lightBlue,
            onPressed: () {
              print(_textEditingController.text);
              lista.add(_textEditingController.text);
              print(lista);
            },
          )
        ],
      ),
      //bottomNavigationBar:  ,
    );
  }
}
