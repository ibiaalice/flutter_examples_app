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
              scale: 1,
              image: NetworkImage(
                  'https://i.guim.co.uk/img/media/fe1e34da640c5c56ed16f76ce6f994fa9343d09d/0_174_3408_2046/master/3408.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=0d3f33fb6aa6e0154b7713a00454c83d'),
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
                'https://static1.bigstockphoto.com/0/6/2/large1500/260666896.jpg'),
          ),
          title: Text('User'),
          subtitle: Text('11/10/2019 às 18:08'),
          trailing: Icon(Icons.more_vert),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Image.network(
              'https://www.hypeness.com.br/1/2019/09/Vira-lata_Caramelo_1.jpg'),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
              "Todo mundo sabe que os vira-latas são cachorros mais inteligentes, afetuosos e ..."),
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
