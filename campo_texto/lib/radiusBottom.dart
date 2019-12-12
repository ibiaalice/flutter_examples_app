import 'package:flutter/material.dart';

class RadiusBottom extends StatefulWidget {
  @override
  _RadiusBottomState createState() => _RadiusBottomState();
}

class _RadiusBottomState extends State<RadiusBottom> {
  String _escolhaUsuario = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            RadioListTile(
              title: Text('Feminino'),
              value: 'f',
              groupValue: _escolhaUsuario,
              onChanged: (escolha) {
                setState(() {
                  _escolhaUsuario = escolha;
                });
                print('resultado: ' + escolha);
              },
            ),
            RadioListTile(
              title: Text('Masculino'),
              value: 'm',
              groupValue: _escolhaUsuario,
              onChanged: (escolha) {
                setState(() {
                  _escolhaUsuario = escolha;
                });
                print('resultado: ' + escolha);
              },
            ),
            RaisedButton(
              child: Text(
                'result',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                print('valor selecionado:' + _escolhaUsuario);
              },
            )
          ],
        ),
      ),
    );
  }
}
