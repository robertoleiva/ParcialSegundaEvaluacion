import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:parcial2/paginas/Describir.dart';
import 'package:parcial2/resorte/Fijo.dart';


class verRutApp extends StatefulWidget {
  verRutApp({Key? key}) : super(key: key);

  @override
  State<verRutApp> createState() => _verRutAppState();
}

class _verRutAppState extends State<verRutApp> {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: SillApp(),
    );
  }



  Widget SillApp(){
    var subir = MediaQuery.of(context).size;
    var bajar = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          width: subir.width,
          child: Text.rich(TextSpan(text: "Cachadas Cuscatlecas", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Buscar",
             fillColor: Colors.black12,
              filled: true,
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search)
          ),
        ),
      ],
    );
  }
}