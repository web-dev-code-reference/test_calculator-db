import 'package:flutter/material.dart';
import 'pages/home.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Calculsator wit DB',
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.redAccent,
      ),
    ),
  );
}
