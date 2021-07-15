import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TarefaUm extends StatefulWidget {
  const TarefaUm({Key? key}) : super(key: key);

  @override
  _TarefaUmState createState() => _TarefaUmState();
}

class _TarefaUmState extends State<TarefaUm>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 1 - Layout Card"),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    if(index> 0) return null;
                return Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(bottom: 30),
                        child: Image.asset("imagens/bonfire.png", width: 500,),),
                      RaisedButton(onPressed: (){},
                        child: Text("Bonfire Um", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                        color: Colors.orangeAccent,
                      ),
                      Padding(padding: EdgeInsets.all(30),
                        child: Image.asset("imagens/bonfire2.png", width: 300,),),
                      RaisedButton(onPressed: (){},
                        child: Text("Bonfire Dois", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                        color: Colors.orangeAccent,
                      ),
                      Padding(padding: EdgeInsets.all(30),
                      child: Image.asset("imagens/bonfire3.png", width: 300,),
                      ),
                      RaisedButton(onPressed: (){},
                        child: Text("Bonfire Três", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                        color: Colors.orangeAccent,
                      ),
                    ],
                  ),
                );
              }
          ))
        ],
      ),

    );
  }
}
