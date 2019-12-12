import 'package:flutter/material.dart';

class SwitchBottom extends StatefulWidget {
  @override
  _SwitchBottomState createState() => _SwitchBottomState();
}

class _SwitchBottomState extends State<SwitchBottom> {
  var _valueNotification = true;
  var _valueConfiguration = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'App',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Switch(
              value: _valueNotification,
              onChanged: (bool value) {
                setState(() {
                  this._valueNotification = value;
                });
                print("valor notif " + _valueNotification.toString());
              },
            ),
            Text('Receber notificações?'),
            Switch(
              value: _valueConfiguration,
              onChanged: (value) {
                setState(() {
                  _valueConfiguration = value;
                });
                print('valor config ' + _valueConfiguration.toString());
              },
            ),
            Text('Ativar Configurações'),
          ],
        ),
      ),
    );
  }
}
