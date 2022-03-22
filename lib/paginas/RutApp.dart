import 'package:flutter/material.dart';
import 'package:parcial2/compuerta/verRutApp.dart';
import 'package:parcial2/tempora/AttDes.dart';



class RutApp extends StatefulWidget {
  

  @override
  State<RutApp> createState() => _RutAppState();
}

class _RutAppState extends State<RutApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: verRutApp(),
      ),
      body: verRutApp(),
    );
  }
}