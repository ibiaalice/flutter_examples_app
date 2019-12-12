import 'package:atm_consultoria/pages/TelaCliente.dart';
import 'package:atm_consultoria/pages/TelaContato.dart';
import 'package:atm_consultoria/pages/TelaEmpresa.dart';
import 'package:atm_consultoria/pages/TelaServico.dart';
import 'package:flutter/material.dart';

class initialPage extends StatefulWidget {
  @override
  _initialPageState createState() => _initialPageState();
}

class _initialPageState extends State<initialPage> {
  void _abrirEmpresa() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TelaEmpresa()));
    print('EMPRESA');
  }

  void _abrirServico() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TelaServico()));
  }

  void _abrirCliente() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TelaCliente()));
    print('CLIENTE');
  }

  void _abrirContato() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TelaContato()));
    print('CONTATO');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'ATM Consultoria',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/logo.png'),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _abrirEmpresa,
                    child: Image.asset('images/menu_empresa.png'),
                  ),
                  //empresa
                  GestureDetector(
                    onTap: _abrirServico,
                    child: Image.asset('images/menu_servico.png'),
                  ),
                  //serviços
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _abrirCliente,
                    child: Image.asset('images/menu_cliente.png'),
                  ),
                  GestureDetector(
                    onTap: _abrirContato,
                    child: Image.asset('images/menu_contato.png'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
