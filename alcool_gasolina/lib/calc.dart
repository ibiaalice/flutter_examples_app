import 'package:flutter/material.dart';

class Calc extends StatefulWidget {
  @override
  _CalcState createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  TextEditingController _controlAlcool = TextEditingController();
  TextEditingController _controlGasolina = TextEditingController();
  String _resultado = 'Resultado';

  void _calcular() {
    var alcool = double.tryParse(_controlAlcool.text);
    var gasolina = double.tryParse(_controlGasolina.text);

    if (alcool == null || gasolina == null) {
      _resultado = 'Não é possivel calcular...';
    } else {
      var r = (alcool / gasolina > 0.7);
      if (r) {
        _resultado = 'Vale a pena usar o Álcool!';
      } else {
        _resultado = 'Vale a pena usar a gasolina';
      }
    }
    setState(() {
      _resultado;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Álcool ou Gasolina'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
          padding: EdgeInsets.all(40),
          child: ListView(
            children: <Widget>[
              Image.asset(
                'images/logo.png',
                height: 90,
              ),
              Text(
                'Saiba qual é a melhor opção para abastecimento do seu carro',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.blue,
                  //backgroundColor: Colors.black12,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Preço do Àlcool:',
                  labelStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black12,
                  ),
                ),
                controller: _controlAlcool,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Preço da Gasolina:',
                  labelStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black12,
                  ),
                ),
                controller: _controlGasolina,
              ),
              RaisedButton(
                color: Colors.blueAccent,
                child: Text(
                  'calcular',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                onPressed: _calcular,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  _resultado,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
