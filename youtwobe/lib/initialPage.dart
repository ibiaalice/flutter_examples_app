import 'package:flutter/material.dart';

class InitialPage extends StatefulWidget {
  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  var _indiceAtual = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> telas = [
      Text('Inicio'),
      Text('Em Alta'),
      Text('Inscrições'),
      Text('Biblioteca'),
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Colors.black12), //define configs de todos os itens
        title: Image.asset(
          //add imagem no appBar
          'images/youtube.png',
          width: 100,
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          //coleção de botões do appBar
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {
              print('pressionou o videozinho');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('apertou a lupinha');
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              print('apertou o usuario');
            },
          )
        ],
      ),
      body: telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        //cria as ações do navigator
        currentIndex: _indiceAtual,
        onTap: (index) {
          print(index);
          setState(() {
            //atualiza status do bottom bar
            _indiceAtual = index;
          });
        },
        type: BottomNavigationBarType.fixed, //tipo de passagem de estado
        fixedColor: Colors.red,
        items: [
          //coleção de  botões do bottombar
          BottomNavigationBarItem(
            title: Text('Inicio'),
            icon: Icon(Icons.home),
            // backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            title: Text('Em Alta'),
            icon: Icon(Icons.whatshot),
            // backgroundColor: Colors.cyan,
          ),
          BottomNavigationBarItem(
            title: Text('Inscrições'),
            icon: Icon(Icons.subscriptions),
            // backgroundColor: Colors.deepOrange,
          ),
          BottomNavigationBarItem(
            title: Text('Biblioteca'),
            icon: Icon(Icons.folder),
            // backgroundColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}
