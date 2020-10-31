import 'package:campo_texto/CampoTexto.dart';
import 'package:campo_texto/CheckBox.dart';
import 'package:campo_texto/SliderBottom.dart';
import 'package:campo_texto/radiusBottom.dart';
import 'package:campo_texto/switchBottom.dart';
import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Campo Texto',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Example(),
    );
  }
}

class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Exemplos de entrada'),
      ),
      body: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: RaisedButton(
                    child: Text('Campo de Texto'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CampoTexto()));
                    }),
              ),
              Center(
                child: RaisedButton(
                    child: Text('CheckBox'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CheckBox()));
                    }),
              ),
              Center(
                child: RaisedButton(
                    child: Text('RadiusBottom'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RadiusBottom()));
                    }),
              ),
              Center(
                child: RaisedButton(
                    child: Text('SliderBottom'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SliderBottom()));
                    }),
              ),
              Center(
                child: RaisedButton(
                    child: Text('SwitchBottom'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SwitchBottom()));
                    }),
              ),
              // ,
            ],
          )),
    );
  }
}
