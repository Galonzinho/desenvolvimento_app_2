import 'package:flutter/material.dart';

void main() => runApp(ComFonts());

class ComFonts extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fontes Personalizadas",
      theme: ThemeData(fontFamily: "Raleway"),
      home: MyFonts(),
    );
  }
}

class MyFonts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Minhas Fontes"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Text("Testando minha fontesinha aplicada! =D",
        style: TextStyle(fontFamily: "RobotoMono"),),
      ),
    );
  }
}
