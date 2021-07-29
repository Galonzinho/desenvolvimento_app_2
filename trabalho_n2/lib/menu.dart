import 'package:flutter/material.dart';
import 'package:trabalho_n2/formulario.dart';

void main() => runApp(Menu());

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Menu de cadastro de Aluno",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
        ),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(
            child: Text(
                "Bem vindo ao cadastro de aluno",
                style: TextStyle(
                  fontSize: 24,
                ),
            )
          ),
          Padding(padding: EdgeInsets.all(16)),
          Center(
            child: Image.asset("imagens/escola.jpeg"),
          ),
          Padding(padding: EdgeInsets.only(top: 60)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.redAccent,
              textStyle: TextStyle(fontSize: 20),
            ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Formulario()));
              },
              child: Text("Ir para tela de Cadastro")
          ),
        ],
      ),
    );
  }
}
