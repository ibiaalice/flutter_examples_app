import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class initialPage extends StatefulWidget {
  @override
  _initialPageState createState() => _initialPageState();
}

class _initialPageState extends State<initialPage> {
  // Future<Map> _recuperarPreco() async {
  //   String url = 'https://blockchain.info/ticker';
  //   http.Response response = await http.get(url);
  //   return json.decode(response.body);
  // }

  String _urlbase = 'https://jsonplaceholder.typicode.com/';

  Future<List<Post>> _recuperarPostagens() async {
    List<Post> lista = List();
    http.Response response = await http.get(_urlbase + 'posts');
    var dados = json.decode(response.body);

    //carrega lista
    for (var post in dados) {
      Post p = Post(post["userId"], post["id"], post["title"], post["body"]);
      lista.add(p);
    }
    //print(lista);
    return lista;
  }

  _post() async {
    var b = json.encode({
      "userId": 666,
      "id": null,
      "title": 'BOKU NO HERO',
      "body":
          "et iusto sed quo iure\nvoluptatem occaecati omnis eligendi aut ad\nvoluptatem doloribus vel accusantium quis pariatur\nmolestiae porro eius odio et labore et velit aut"
    });
    http.Response response = await http.post(
      _urlbase + '/posts',
      headers: {"Content-type": "application/json; charset=UTF-8"},
      body: b,
    );

    print(b);
  }

  _patch() async {
    var corpo = json.encode({
      "userId": 120,
      "id": null,
      "title": 'titulo alterado',
      "body": "um corpo",
    });
    http.Response response =
        await http.patch(_urlbase + 'posts/2', headers: {}, body: corpo);
    print('resposta:' + response.statusCode.toString());
    print('resposta: ' + response.body.toString());
  }

  _put() async {
    // var item = '2';
    var corpo = json.encode({
      "userId": 120,
      "id": null,
      "title": 'titulo alterado',
      "body": "um corpo",
    });
    http.Response response =
        await http.put(_urlbase + 'posts/2', headers: {}, body: corpo);
    print('resposta:' + response.statusCode.toString());
    print('resposta: ' + response.body.toString());
  }

  _delete() async {
    http.Response response = await http.delete(_urlbase + 'posts/2');

    print(response.statusCode.toString());
    print(response.body.toString());

    if (response.statusCode == 200)
      print('deu GG');
    else
      print('you fired');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('consumo avançado'),
      ),
      //um método Future por causa do acesso a API
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(0),
                  child: RaisedButton(
                    onPressed: () {
                      _post();
                      print('salvar');
                    },
                    child: Text('Salvar'),
                    color: Colors.greenAccent,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(0),
                  child: RaisedButton(
                    padding: EdgeInsets.all(10),
                    onPressed: () {
                      print('apertou 2');
                      _patch();
                    },
                    child: Text('Atualizar'),
                    color: Colors.yellowAccent,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(0),
                  child: RaisedButton(
                    padding: EdgeInsets.all(10),
                    onPressed: () {
                      print('apertou delete');
                      _delete();
                    },
                    child: Text('Excluir'),
                    color: Colors.redAccent,
                  ),
                ),
              ],
            ),
            Expanded(
              child: FutureBuilder<List<Post>>(
                future: _recuperarPostagens(),
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    //estados de conexão, é obrigatório ter todos
                    case ConnectionState.none:
                    case ConnectionState.waiting:
                      return Center(
                        //carrega o ciclo de progressão
                        child: CircularProgressIndicator(),
                      );
                      break;
                    case ConnectionState.active:
                    case ConnectionState.done:
                      if (snapshot.hasError) {
                        print(
                            "lista: Erro ao carregar "); //caso não encontre a url
                      } else {
                        print("lista: carregou!! "); //carrega uma lista
                        return ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (context, index) {
                              List<Post> lista = snapshot.data;
                              Post post = lista[index];

                              return ListTile(
                                title: Text(post.title),
                                subtitle: Text(post.id.toString()),
                              );
                            });
                      }
                      break;
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Post {
  int _userId;
  int _id;
  String _title;
  String _body;

  Post(this._userId, this._id, this._title, this._body);

  set body(String value) {
    _body = value;
  }

  set title(String value) {
    _title = value;
  }

  set id(int value) {
    _id = value;
  }

  set userId(int value) {
    _userId = value;
  }

  String get body {
    return this._body;
  }

  String get title {
    return this._title;
  }

  int get id {
    return this._id;
  }

  int get userId {
    return this._userId;
  }

  Map toJson() {
    return {
      'userId': this._userId,
      'id': this._id,
      'title': this._title,
      'body': this._body
    };
  }
}
