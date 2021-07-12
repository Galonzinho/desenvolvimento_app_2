import 'package:flutter/material.dart';

void main() {
  runApp( new MaterialApp(
    title: 'Meu Primeiro App Flutter',
    home: Container(
      color: Colors.indigo,
      child: Column(
        children: <Widget> [
          //ignore: deprected_member_use
          FlatButton(
              onPressed: (){
                print("Clicar");
              },
              child: Text(
                "Este é um Botão!", style:
                TextStyle(
                  fontSize: 42,
                  color: Colors.cyan,
                  decoration: TextDecoration.none
                ),
              ))
        ],
      ),
    )
  ) );
}
