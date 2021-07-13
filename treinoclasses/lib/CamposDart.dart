import 'package:flutter/material.dart';

class CamposDart extends StatefulWidget {
  const CamposDart({Key? key}) : super(key: key);

  @override
  _CamposDartState createState() => _CamposDartState();
}

class _CamposDartState extends State<CamposDart> {
  //é um controlador usado como um construtor para declaração dos valores do campo.
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes de Entrada de Dados"),
      ),
      body: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(30),
          child: TextField(keyboardType: TextInputType.number,
          decoration: InputDecoration(labelText: "Digite um valor"),
          maxLength: 8,
          obscureText: false,
          onSubmitted: (String e){
            print("O valor foi: " + e);
          },
            controller: textEditingController,
          ),),
          //ignore: deprecated_member_use
          RaisedButton(
            child: Text("Enviar"),
              color: Colors.lightBlue,
              onPressed: (){
              print("Valor foi: " + textEditingController.text);
              },
          ),
        ],
      ),
    );
  }
}
