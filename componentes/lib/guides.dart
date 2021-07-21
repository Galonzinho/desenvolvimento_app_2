import 'package:flutter/material.dart';

void main(){
  runApp(ComLayout());
}

class ComLayout extends StatelessWidget {
  const ComLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.image)),
                Tab(icon: Icon(Icons.collections)),
                Tab(icon: Icon(Icons.palette)),
                Tab(icon: Icon(Icons.portrait)),
              ],
            ),
            title: Text("Artes do Mundo"),
            backgroundColor: Colors.indigo,
          ),
          body: Container(
            child: TabBarView(
              children: <Widget>[
                Image.asset("imagens/monalisa.jpg"),
                Image.asset("imagens/obeijo.jpg"),
                Image.asset("imagens/picasso.jpg"),
                Image.asset("imagens/sissi.jpg"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
