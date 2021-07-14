import 'package:flutter/material.dart';

class Tarefa2 extends StatefulWidget {
  const Tarefa2({Key? key}) : super(key: key);

  @override
  _Tarefa2State createState() => _Tarefa2State();
}

class _Tarefa2State extends State<Tarefa2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(40),
            child: Image.asset("imagens/arvore.jpg", height: 700, width: 600,),
          ),
          RaisedButton(
              child: Text("^ Regue a árvore ^", style: TextStyle(fontSize: 30),),
              color: Colors.lightGreen,
              onPressed: (){})
        ],
      ),
    );
  }
}
