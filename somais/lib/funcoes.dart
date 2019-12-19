import 'package:flutter/material.dart';

class Funcoes {
  FloatingActionButton criaFloatingButton(func) {
    return FloatingActionButton(
      onPressed: func,
      tooltip: 'Increment',
      child: Icon(Icons.add),
    );
  }
}
