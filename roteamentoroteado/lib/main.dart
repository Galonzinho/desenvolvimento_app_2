import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Rotas Nomeadas",
    initialRoute: "/",
    routes: {
      "/": (context) => PrimeiraTela(),
      "/second" : (context) => SegundaTela(),
    },

  ));
}

class PrimeiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primeira Tela"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, "/second");
          },
          child: Text("Ir para a segunda tela"),
        ),
      ),
    );
  }
}

class SegundaTela extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda Tela"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Voltar ao Inicio"),
        ),
      ),
    );
  }
}


