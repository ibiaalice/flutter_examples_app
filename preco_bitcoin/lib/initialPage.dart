import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class initialPage extends StatefulWidget {
  @override
  _initialPageState createState() => _initialPageState();
}

class _initialPageState extends State<initialPage> {
  String _resposta = 'AINDA SEM MUDANÇA';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Preço Bitcoin',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(65),
              child: Image.asset(
                'images/bitcoin.png',
                width: 500,
              ),
            ),
            Text(
              _resposta,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            RaisedButton(
              child: Text(
                'ATUALIZAR',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              color: Colors.orange,
              onPressed: _precoBitcoin,
            )
          ],
        ),
      ),
    );
  }

  void _precoBitcoin() async {
    String url = 'https://blockchain.info/ticker';
    http.Response response;
    response = await http.get(url);

    Map<String, dynamic> retorno = json.decode(response.body);
    setState(() {
      _resposta = "RS " + retorno['BRL']['buy'].toString();
    });
    print(retorno['BRL']['buy'].toString());
  }
}
