import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TelaSecundaria extends StatefulWidget {
  String valor;

  TelaSecundaria(String s, {valor});

  @override
  _TelaSecundariaState createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  Widget draw = Drawer(
    child: ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text('Beatriz Alice'),
          accountEmail: Text('ibiaalice@gmail.com'),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.grey,
            child: Text(
              'foto ',
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
        ListTile(
          title: Text('Carteira'),
          trailing: Icon(Icons.account_balance_wallet),
          onTap: () {
            print('apertou carteira');
          },
        ),
        ListTile(
          title: Text('Histórico de Corridas'),
          trailing: Icon(Icons.equalizer),
          onTap: () {
            print('apertou Histórico de corridas');
          },
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tela Secundária',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            //
          ],
        ),
      ),
      drawer: this.draw,
    );
  }
}
