import 'package:flutter/material.dart';

void main() {

  runApp( new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text( "Meu App com Flutter" ),
        backgroundColor: Colors.indigo,
      ), //Cabeçalho do App -
    body: Padding(
      padding: EdgeInsets.all(16),
      child: Text( "Conteúdo do App" ),
    ),  //Corpo do app
      bottomNavigationBar: BottomAppBar() , //Rodapé do App
    ),
  ));

}