import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



Widget verAttDes(){
  return AppBar(
    backgroundColor: Colors.blueGrey,
    elevation: 0,
    title: Padding(padding: 
    const EdgeInsets.only(left: 10, right: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.menu, color: Colors.black,),
        IconButton(
          onPressed: () {
              
        }, 
        icon: Icon(
          Icons.shopping_cart,
          color: Colors.black38,
        ),
        ),
      ],
    ),
    ),
  );
}