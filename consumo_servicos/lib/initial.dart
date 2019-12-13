import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class InitialPage extends StatefulWidget {
  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  TextEditingController txt = TextEditingController();
  String _resultado = 'Resultado';
  //Comunicação Síncrona e Assíncrona
  void _recuperarCep() async {
    //recupera cep apartir de uma requisição http
    var cep = txt.text;
    String url = 'https://viacep.com.br/ws/$cep/json/'; //url
    http.Response response; //variavel com o método response

    response = await http.get(url); //atribuição tem que ser await!!!
    Map<String, dynamic> retorno = json.decode(response.body);
    String cidade = retorno['localidade'];
    String ibge = retorno['ibge'];

    setState(() {
      _resultado = 'Cidade: $cidade\nCep: $cep\nIBGE: $ibge ';
    });

    //print(response.statusCode.toString()); // pega o statusCode da requisição
    //print(response.body.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Consumo Serviços'),
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        child: Column(
          children: <Widget>[
            Center(
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Digite um cep'),
                maxLength: 8,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                ),
                onSubmitted: (String e) {
                  print(e);
                },
                controller: txt,
              ),
            ),
            Center(
              child: RaisedButton(
                child: Text('Clique aqui'),
                onPressed: _recuperarCep,
              ),
            ),
            Center(
              child: Text(
                _resultado,
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
