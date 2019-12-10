import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: SizedBox(
            width: 100,
            child: Image.asset('assets/app-logo.png'),
          ),
        ),
        leading: Container(
          height: 40,
          width: 40,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: AssetImage('asserts/user-picture.png'),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        actions: <Widget>[
          Container(
            width: 60,
            child: FlatButton(
              child: Icon(
                Icons.search,
                color: Color(0xFFBABABA),
              ),
              onPressed: () => {},
            ),
          ),
        ],
      ),
      /**
       * 
       * 
       * 
       * 
       * 
       * 
       */

      body: Container(
        color: Color(0xFFF2F3F6),
        child: ListView(
          children: <Widget>[
            cardItem(),
            cardItem(),
            cardItem(),
          ],
        ),
      ),
    );
  }
}

Widget cardItem() {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          // leading: Icon(Icons.album),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://www.hypeness.com.br/wp-content/uploads/2019/09/Vira-lata_Caramelo_2.jpg'),
          ),
          title: Text('User'),
          subtitle: Text('11/09/2019 às 18:08'),
          trailing: Icon(Icons.more_vert),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Image.network(
              'https://www.hypeness.com.br/wp-content/uploads/2019/09/Vira-lata_Caramelo_2.jpg'),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
              "Todo mundo sabe que os vira-latas são cachorros mais inteligentes, afetuosos e até mesmo saudáveis que os cães de raça, mas nenhum parece carregar mais o espírito que o caramelo. A internet já sabe disso há tempos, e verdadeiras campanhas vem sendo levantadas virtualmente – pela instauração de um dia para o vira-lata caramelo, pela confirmação do cachorro como um símbolo nacional, e até mesmo para que, como são as vacas na Índia, o vira-lata caramelo se torne um animal sagrado em solo nacional."),
        ),
        ButtonTheme.bar(
          child: ButtonBar(
            children: <Widget>[
              FlatButton(
                child: Icon(Icons.favorite),
                onPressed: () => {/** */},
              ),
              FlatButton(
                child: Icon(Icons.share),
                onPressed: () => {},
              ),
            ],
          ),
        )
      ],
    ),
  );
}
