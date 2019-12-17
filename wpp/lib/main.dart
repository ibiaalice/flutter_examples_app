import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Home.dart';
import 'Login.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
    theme: ThemeData(
        primaryColor: Color(0xff075E54), accentColor: Color(0xff25D366)),
    debugShowCheckedModeBanner: false,
  ));
}
