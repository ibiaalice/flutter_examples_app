import 'package:flutter/material.dart';

class SliderBottom extends StatefulWidget {
  @override
  _SliderBottomState createState() => _SliderBottomState();
}

class _SliderBottomState extends State<SliderBottom> {
  @override
  Widget build(BuildContext context) {
    double valor = 5;
    return Scaffold(
      appBar: AppBar(
        title: Text('App'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(60),
        child: Column(
          children: <Widget>[
            Slider(
              value: valor,
              min: 0,
              max: 10,
              label: 'Valor selecionado',
              divisions: 10,
              onChanged: (double novoValor) {
                setState(
                  () {
                    valor = novoValor;
                  },
                );
                print(valor);
              },
            ),
            RaisedButton(
              child: Text(
                'Salvar',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              onPressed: () {
                //aqui faz alguma coisa
              },
            )
          ],
        ),
      ),
    );
  }
}
