import 'package:flutter/material.dart';

class TelaCliente extends StatefulWidget {
  @override
  _TelaClienteState createState() => _TelaClienteState();
}

class _TelaClienteState extends State<TelaCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Clientes',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.limeAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              //imagem e titulo
              children: <Widget>[
                Padding(
                  padding:
                      EdgeInsets.only(left: 20, top: 60, right: 40, bottom: 60),
                  child: Image.asset('images/detalhe_cliente.png'),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Clientes',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.lime,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Empresa de Software',
                    style: TextStyle(fontSize: 15, color: Colors.black54),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Image.asset('images/cliente1.png'),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Image.asset('images/cliente2.png'),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Empresa de Auditoria',
                    style: TextStyle(fontSize: 15, color: Colors.black54),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
