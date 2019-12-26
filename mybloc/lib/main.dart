import 'package:flutter/material.dart';
import 'package:mybloc/movie-list.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: MovieList(),
    );
  }
}
