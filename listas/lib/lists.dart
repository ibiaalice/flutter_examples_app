import 'package:flutter/material.dart';

class Lists extends StatefulWidget {
  @override
  _ListsState createState() => _ListsState();
}

class _ListsState extends State<Lists> {
  List _itens = [];

  void _carregarItens() {
    for (int i = 0; i <= 20; i++) {
      Map<String, dynamic> item = Map();
      item['titulo'] = 'Título $i';
      item['descricao'] = 'Descricao $i alguma outra coisa aqui';
      _itens.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    _carregarItens();
    return Scaffold(
      appBar: AppBar(
        title: Text('List'),
      ),
      body: Container(
          child: ListView.builder(
        itemCount: _itens.length,
        itemBuilder: (context, indice) {
          // Map<String, dynamic> item = _itens[indice];
          //print('Item : ${_itens[indice]['titulo']}');

          return ListTile(
            onTap: () {
              // print('clique com onTap ${indice}');
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text(
                      _itens[indice]['titulo'],
                      style: TextStyle(
                          //color: Colors.white,
                          ),
                    ),
                    // titlePadding: EdgeInsets.all(100),
                    content: Text(_itens[indice]['descricao']),
                    //contentPadding: EdgeInsets.all(100),
                    //backgroundColor: Colors.black,

                    actions: <Widget>[
                      RaisedButton(
                        color: Colors.red,
                        onPressed: () {
                          Navigator.pop(context);
                          print('apertou');
                        },
                        child: Text(
                          'excluir',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      RaisedButton(
                        // padding: EdgeInsets.all(20),
                        onPressed: () {
                          setState(() {
                            _itens.removeAt(indice);
                          });
                          Navigator.pop(context);
                        },
                        child: Text(
                          'continuar sem excluir',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },

            // onLongPress: () {
            //   print('clique com onLongPress');
            // },
            title: Text(_itens[indice]['titulo']),
            subtitle: Text(_itens[indice]['descricao']),
          );
        },
      )),
    );
  }
}
