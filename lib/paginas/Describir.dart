import 'package:flutter/material.dart';
import 'package:parcial2/paginas/Carrito.dart';
import 'package:parcial2/paginas/RutApp.dart';
import 'package:parcial2/resorte/Fijo.dart';
import 'package:parcial2/tempora/AttDes.dart';
import 'package:flutter/cupertino.dart';



class Describir extends StatefulWidget {
  Describir({Key? key}) : super(key: key);

  @override
  State<Describir> createState() => _DescribirState();
}

class _DescribirState extends State<Describir> {
  String dejarSilla = "assets/images/Grupo1.png";
  @override
  Widget build(BuildContext context) {
    var subir = MediaQuery.of(context);
    var bajar = MediaQuery.of(context);
  
   
  
  
   return Scaffold(
        backgroundColor: Color(0xFFD6D6D6),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFFD6D6D6),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Carrito()));
                },
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black87,
                )),
          ],
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RutApp()));
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black87,
              )),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                   // width: subir.width,
                    height: 200,
                    child: Ink.image(
                      image: AssetImage(dejarSilla),
                      height: 100,
                      width: 100,
                      fit: BoxFit.scaleDown,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            alignment: Alignment.bottomRight,
                            width: 40,
                            height: 180,
                            margin: EdgeInsets.only(top: 10, right: 10),
                            child:
                                Icon(Icons.favorite_rounded, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                   // width: subir.width,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Nombre",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              " 75.00",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.star, color: Colors.lightBlueAccent),
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.lightBlueAccent),
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.black38),
                            Text(
                              " 350 Vistas",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Text(
                            "Productos de primera calidad elaborados con la materia prima altamente seleccionada",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                               // width: subir.width,
                                margin: EdgeInsets.only(top: 20),
                                child: Text(
                                  "Colores: ",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        dejarSilla =
                                            articulos[1]["img"].toString();
                                      });
                                    },
                                    icon: Icon(Icons.circle,
                                        color: Colors.yellow))//es el ICONO DE LA SILLA 
                              ),
                              Container(
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        dejarSilla =
                                            articulos[2]["img"].toString();
                                      });
                                    },
                                    icon: Icon(Icons.circle,
                                        color: Colors.red)), //Es el ICONO DE LA SILLA
                              ),
                              Container(
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        dejarSilla =
                                            articulos[3]["img"].toString();
                                      });
                                    },
                                    icon:
                                        Icon(Icons.circle, color: Colors.grey)),
                              )
                            ],
                          ),
                        ),
                        Container(
                         // width: subir.width,
                          child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.greenAccent,
                                  padding:
                                      EdgeInsets.only(top: 15, bottom: 15)),
                              onPressed: () {
                                print("Dio click en el boton");
                              },
                              icon: Icon(
                                Icons.shopping_cart_outlined,
                                color: Colors.pink,
                              ),
                              label: Text(
                                "Colores",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white, 
                                ),
                              )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}