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
    int categoActi = 0;
    int artiSele1 = 0;
    int artiSele2 = 0;

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
             fillColor: Colors.amber,
              filled: true,
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search)
          ),
        ),
        SingleChildScrollView(
        scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(categorias.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(right: 5),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      categoActi = index;
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text.rich(TextSpan(
                          text: categorias[index],
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                      Container(
                        width: 50,
                        height: 1,
                        color: categoActi == index
                            ? Colors.black87
                            : const Color.fromRGBO(255, 255, 255, 1),
                      )
                    ],
                  ),
                ),
              );
            }),
          ),





        ),

         SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(articulos.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(left: 10),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      artiSele1 = index;

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Describir()));
                    });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        width: 140,
                        height: 160,
                        decoration: const BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.all(Radius.circular(
                                10))), // Image.asset(producto[index]["img"]
                        child: Ink.image(
                            image: AssetImage(articulos[index]["img"]),
                            height: 100,
                            width: 100,
                            fit: BoxFit.scaleDown,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  width: 40,
                                  margin: EdgeInsets.only(top: 10, right: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Icon(Icons.favorite_rounded,
                                      color: artiSele1 == index
                                          ? Colors.red
                                          : Colors.white),
                                ),
                              ],
                            )),
                      ),
                      Container(
                        width: 100,
                        margin: EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              articulos[index]["titulo"],
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              articulos[index]["precio"].toString(),
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.cyanAccent,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
        
        // OTRO PROCESO

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(articulos.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(left: 10),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      artiSele2 = index;
                    });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        width: 140,
                        height: 160,
                        decoration: const BoxDecoration(
                            color: Colors.black12,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Ink.image(
                            image: AssetImage(articulos[index]["img"]),
                            height: 100,
                            width: 100,
                            fit: BoxFit.scaleDown,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  width: 40,
                                  margin: EdgeInsets.only(top: 10, right: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Icon(Icons.favorite_rounded,
                                      color: artiSele2 == index
                                          ? Colors.yellowAccent // aqui cabie de rojo amarillo creo q es corazon
                                          : Colors.blueGrey),
                                ),
                              ],
                            )),
                      ),
                      Container(
                        width: 100,
                        margin: EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              articulos[index]["titulo"],
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              articulos[index]["precio"].toString(),
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
  
}

