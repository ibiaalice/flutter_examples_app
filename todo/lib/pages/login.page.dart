import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple[200],
        body: Padding(
            padding: EdgeInsets.all(25),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //inserindo entradas
                  TextFormField(
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    style:
                        new TextStyle(color: Colors.green[100], fontSize: 18),
                    decoration: InputDecoration(
                      labelText: 'Matricula',
                      labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  Divider(),
                  TextFormField(
                    autofocus: true,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style:
                        new TextStyle(color: Colors.green[100], fontSize: 18),
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  Divider(),
                  // ButtonTheme()
                ],
              ),
            )));
  }
}
