import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/models/item.dart';
import 'package:todo/pages/login.page.dart';

//casca
void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Todo app',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: LoginPage(),//HomePage(),
        );
  }
}

//pagina

class HomePage extends StatefulWidget {
  var items = new List<Item>();

  HomePage() {
    items = [];
    // items.add(Item(title: 'S.O', done: true));
    // items.add(Item(title: 'A.S', done: false));
    // items.add(Item(title: 'B.D', done: true));
    // items.add(Item(title: 'Redes', done: true));
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var newTaskCtrl = TextEditingController();
  void add() {
    if (newTaskCtrl.text.isEmpty) {
      return;
    }
    setState(() {
      widget.items.add(Item(title: newTaskCtrl.text, done: false));
      save();
      newTaskCtrl.clear();
    });
  }

  void remove(int index) {
    setState(() {
      widget.items.removeAt(index);
      save();
    });
  }

  Future load() async {
    var preference = await SharedPreferences.getInstance();
    var data = preference.getString('data');

    if (data != null) {
      Iterable decoded = jsonDecode(data);
      List<Item> result = decoded.map((i) => Item.fromJson(i)).toList();
      setState(() {
        widget.items = result;
      });
    }
  }

  save() async {
    var preference = await SharedPreferences.getInstance();
    await preference.setString('data', jsonEncode(widget.items));
  }

  _HomePageState() {
    load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          controller: newTaskCtrl,
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          decoration: InputDecoration(
            labelText: 'Insira nova matéria:',
            labelStyle:
                TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = widget.items[index];

          return Dismissible(
            child: CheckboxListTile(
              title: Text(item.title),
              value: item.done,
              onChanged: (value) {
                setState(() {
                  item.done = value;
                  save();
                });
              },
            ),
            key: Key(item.title),
            background: Container(
              color: Colors.indigo[50],
              child: Center(child: Text('Excluir')),
            ),
            onDismissed: (direction) {
              print(direction);
              remove(index);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: add,
        child: Icon(Icons.add),
        backgroundColor: Colors.indigoAccent,
      ),
    );
  }
}

//lixo

/*
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teste',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home:,
    );
  }
}
*/
