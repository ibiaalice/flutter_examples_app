import 'package:flutter/material.dart';

class widgetsWallet {
  widgetsWallet() {}
  Widget MontaBody() {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            width: double.maxFinite,
            height: 100,
            child: RaisedButton(
              color: Colors.indigo,
              child: Text('Olá Beatriz'),
              onPressed: () {
                print('apertou no nome');
              },
            ),
          ),
          Divider(
            height: 1,
          ),
          SizedBox(
            width: double.maxFinite,
            height: 65,
            child: RaisedButton(
              color: Colors.indigoAccent,
              child: Row(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Saldo',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text('RS 0.00'),
                    ],
                  )
                ],
              ),
              onPressed: () {
                print('apertou no nome');
              },
            ),
          )
        ],
      ),
    );
  }
}
