import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jokenpo/Jogo.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Jogo(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _imageResult = 'images/padrao.png';
  var _images = ['images/pedra.png', 'images/papel.png', 'images/tesoura.png'];

  void _sortear() {
    var n = Random().nextInt(_images.length);
    print(n);

    setState(() {
      _imageResult = _images[n];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JokenPo!'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(_imageResult),
            Text(
              'clique para dar resultado',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.italic,
                color: Colors.black54,
              ),
            ),
            RaisedButton(
              child: Text(
                'Jo Ken Po!',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              color: Colors.blueAccent,
              onPressed: _sortear,
            ),
          ],
        ),
      ),
    );
  }
}
