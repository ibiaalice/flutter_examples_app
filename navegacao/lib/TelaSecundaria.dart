import 'package:flutter/material.dart';
import 'package:navegacao/carteira.dart';
import 'arquivo.dart';

class TelaSecundaria extends StatefulWidget {
  String valor;
  TelaSecundaria(String s, {valor});

  @override
  _TelaSecundariaState createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  //chave global
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  funcoes f = new funcoes();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(
                height: 85,
                width: double.infinity,
                child: RaisedButton(
                  child: Text('um botão'),
                  color: Colors.white,
                  onPressed: () {
                    print('um');
                  },
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  child: Text('um botão'),
                  color: Colors.white,
                  onPressed: () {
                    print('um');
                  },
                ),
              ),
            ],
          ),
          //Stack(),
        ],
      ),
      drawer: f.montaDrawerInicial(
        'um',
        'dois',
        Icons.child_care,
        Icons.close,
        'Beatriz',
        'beatrizalice00@gmail.com',
        mudaPaginaCarteira,
      ),
      floatingActionButton:
          f.montaBotaoLocalizacao(Icons.location_on, Colors.indigo),
      bottomNavigationBar: f.montaBottomBar(
        _scaffoldKey,
        'menu',
        Icons.menu,
        'escanear',
        Icons.camera,
        'Info',
        Icons.info_outline,
        Colors.lightBlue,
      ),
    );
  }

  void mudaPaginaCarteira() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MyWallet(),
      ),
    );
  }
}
