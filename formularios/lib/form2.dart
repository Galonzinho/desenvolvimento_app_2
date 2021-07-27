import 'package:flutter/material.dart';
import 'produto.dart';

void main() => runApp(FormularioDois());

class FormularioDois extends StatelessWidget {
  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorQuantidade = TextEditingController();
  final TextEditingController _controladorValor = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cadastro produtos"),
        ),
        body: Column(
          children: <Widget>[
            TextField(
              controller: _controladorNome,
              decoration: InputDecoration(labelText: "Produto"),
              keyboardType: TextInputType.text,
            ),
            Padding(padding: EdgeInsets.only(top: 16)),
            TextField(
              controller: _controladorQuantidade,
              decoration: InputDecoration(labelText: "Quantidade"),
              keyboardType: TextInputType.number,
            ),
            Padding(padding: EdgeInsets.only(top: 16)),
            TextField(
              controller: _controladorValor,
              decoration: InputDecoration(labelText: "Valor"),
              keyboardType: TextInputType.number,
            ),
            Padding(padding: EdgeInsets.only(top: 16)),
            RaisedButton(
                child: Text("Cadastrar"),
                onPressed: (){
                  final String nome = _controladorNome.text;
                  final int? quantidade = int.tryParse(_controladorQuantidade.text);
                  final double? valor = double.tryParse(_controladorValor.text);
                })
          ],
        ),
      ),
    );
  }
}