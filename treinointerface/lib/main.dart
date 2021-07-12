import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,

  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu App - Salt And Sanctuary"),
        backgroundColor: Colors.black26,
        centerTitle: true,
        backwardsCompatibility: false,
        titleTextStyle: TextStyle(color: Colors.white70, fontSize: 24, fontWeight: FontWeight.bold),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          border:Border.all(width: 3, color:Colors.black26)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
            //filhos
            child: Image.asset("imagens/salt.jpg")
            ),
            Text(
                "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século"
                    " XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos."
                    " Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente"
                    " inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente"
                    " quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.",
                textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Image.asset("imagens/salt2.png"),
            RaisedButton(
              color: Colors.black26,
              child: Text(
                "Prepare-se para Morrer",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              onPressed: (){},
            )
          ]
        ),
      ),
    );
  }
}

