import 'package:flutter/material.dart';
import 'dart:math';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    'Quando você ama, há o risco de odiar.',
    'Uma vez me disseram que o lugar em que alguém está pensando em você, é o lugar para onde você deve voltar.',
    'Se você não tem razão para estar vivo, é o mesmo que estar morto.',
    'Mesmo que não seja agora, não se apresse, não se confunda. Você é minha paz, acredite em si mesma e continue devagar, vou te esperar.',
    'Não importa o quão grande seja a dor, eu continuarei seguindo em frente.',
    'Aquele que trabalha duro pode superar um gênio,mas,de nada adianta trabalhar duro se você não confia em você mesmo…'
        "O sol já se foi, agora só nos resta as memórias daquela luz.",
    'Aqueles que desobedecem as regras são tratados como lixo, mas aqueles que abandonam seus companheiros são piores que lixo.',
    "As pessoas se tornam mais fortes, porque elas têm memórias que não podem esquecer.",
    "A minha vida inteira eu fui um covarde, mas agora eu sei que fugir e me esconder das coisas que tenho medo não vai fazê-las desaparecer."
  ];

  var _fraseGerada = 'Clique abaixo para gerar uma frase';

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frases do Dia'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        //decoration: BoxDecoration(
        //border: Border.all(width: 3, color: Colors.greenAccent),
        //),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/logo.png'),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black54,
                fontSize: 17,
              ),
            ),
            RaisedButton(
              child: Text(
                'Nova Frase',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              color: Colors.greenAccent,
              onPressed: _gerarFrase,
            ),
          ],
        ),
      ),
    );
  }
}
