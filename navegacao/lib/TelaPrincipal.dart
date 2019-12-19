import 'package:flutter/material.dart';
import 'package:navegacao/TelaSecundaria.dart';

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff9400D3),
        padding: EdgeInsets.all(32),
        child: ListView(
          children: <Widget>[
            Center(
              child: RaisedButton(
                child: Text(
                  'Ir para a segunda tela',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                color: Color(0xff9400D3),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TelaSecundaria('biaalice'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
