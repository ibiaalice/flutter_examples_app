import 'package:flutter/material.dart';

class Inscricoes extends StatefulWidget {
  @override
  _InscricoesState createState() => _InscricoesState();
}

class _InscricoesState extends State<Inscricoes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Inscrições',
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}
