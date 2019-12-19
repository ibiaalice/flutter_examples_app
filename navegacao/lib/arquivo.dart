import 'package:flutter/material.dart';

class funcoes {
  Drawer montaDrawerInicial(String titulo1, String titulo2, IconData icone1,
      IconData icone2, String nomeUser, String emailUser) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Color(0xff9400D3)),
            currentAccountPicture: CircleAvatar(
              child: Text('B'),
              backgroundColor: Color(0xff333333),
            ),
            accountEmail: Text(emailUser),
            accountName: Text(nomeUser),
          ),
          ListTile(
            title: Text(titulo1),
            trailing: Icon(icone1),
          ),
          ListTile(
            title: Text(titulo2),
            trailing: Icon(icone2),
          ),
        ],
      ),
    );
  }

  FloatingActionButton montaBotaoLocalizacao(
      IconData icone, MaterialColor cor) {
    return FloatingActionButton(
      child: Icon(icone),
      onPressed: () {
        print('apertou botão');
      },
      backgroundColor: cor,
    );
  }

  BottomNavigationBar montaBottomBar(
    GlobalKey<ScaffoldState> key,
    String botao1,
    IconData icone1,
    String botao2,
    IconData icone2,
    String botao3,
    IconData icone3,
    MaterialColor corSelect,
  ) {
    return BottomNavigationBar(
      currentIndex: 1,
      fixedColor: corSelect,
      items: <BottomNavigationBarItem>[
        //1
        BottomNavigationBarItem(icon: Icon(icone1), title: Text(botao1)),
        BottomNavigationBarItem(icon: Icon(icone2), title: Text(botao2)),
        BottomNavigationBarItem(icon: Icon(icone3), title: Text(botao3)),
      ],
      onTap: (item) {
        switch (item) {
          case 0:
            print('apertou 1');
            key.currentState.openDrawer();
            break;
          case 1:
            print('apertou 2');
            break;
          case 2:
            print('apertou 3');
        }
      },
    );
  }
}
