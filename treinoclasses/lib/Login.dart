import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _controllerUsuario = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela de Login"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Image.asset("imagens/amazonlogo.jpg")
              ),
              Padding(padding: EdgeInsets.only(bottom: 10),
                child: Text("Digite seu e-mail e senha para acessar o serviço:",
                style: TextStyle(fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange),
                ),
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: "Digite seu e-mail: "),
                style: TextStyle(fontSize: 15),
                controller: _controllerUsuario,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(labelText: "Digite sua senha: "),
                style: TextStyle(fontSize: 15),
                controller: _controllerSenha,
                obscureText: true,
              ),
              Padding(padding: EdgeInsets.only(top: 10),
              child: RaisedButton(
                color: Colors.deepOrange,
                textColor: Colors.white,
                padding: EdgeInsets.all(15),
                child: Text("Logar", style: TextStyle(fontSize: 15),),
                onPressed: () {} ,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
