import 'package:flutter/material.dart';
import 'package:navegacao/carteira-widgets.dart';

class MyWallet extends StatefulWidget {
  @override
  _MyWalletState createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  widgetsWallet c = widgetsWallet();
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: c.MontaBody());
  }
}
