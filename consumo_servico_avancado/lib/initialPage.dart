import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class initialPage extends StatefulWidget {
  @override
  _initialPageState createState() => _initialPageState();
}

class _initialPageState extends State<initialPage> {
  Future<Map> _recuperarPreco() async {
    String url = 'https://blockchain.info/ticker';
    http.Response response = await http.get(url);
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map>(
      future: _recuperarPreco(),
      builder: (context, snapshot) {
        String resultado;

        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            print('conexao waiting');
            resultado = 'esperando...';
            break;
          case ConnectionState.active:
          case ConnectionState.done:
            print('conexao feita');
            if (snapshot.hasError) {
              resultado = 'Erro ao carregar dados';
            } else {
              double value = snapshot.data['BRL']['buy'];
              resultado = 'Preco do bitcoin:' + value.toString();
            }
            break;
        }
        return Center(
          child: Text(resultado),
        );
      },
    );
  }
}
