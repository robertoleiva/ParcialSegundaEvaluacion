import 'package:flutter/material.dart';
import 'package:parcial2/main.dart';

void main() {
  runApp(Parcial2());
}

class Parcial2 extends StatelessWidget {
  const Parcial2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Evaluacion-2',
      home: Text.rich(TextSpan(text: "CACHADAS SILLAS")),
      //home: CachadaApp(),

    );
  }
}