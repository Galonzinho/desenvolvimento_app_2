import 'package:flutter/material.dart';
import 'produto.dart';

void main() => runApp(FormularioDois());

class FormularioDois extends StatelessWidget {

  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorEmail = TextEditingController();
  final TextEditingController _controladorIdade = TextEditingController();
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Cadastro de Aluno - Cursos",
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: <Widget>[
            TextField(
              controller: _controladorNome,
              decoration: InputDecoration(labelText: "Nome:"),
              keyboardType: TextInputType.text,
            ),
            Padding(padding: EdgeInsets.only(top: 16)),
            TextField(
              controller: _controladorEmail,
              decoration: InputDecoration(labelText: "E-mail:"),
              keyboardType: TextInputType.emailAddress,
            ),
            Padding(padding: EdgeInsets.only(top: 16)),
            TextField(
              controller: _controladorIdade,
              decoration: InputDecoration(labelText: "Idade:"),
              keyboardType: TextInputType.number,
            ),
            Padding(padding: EdgeInsets.only(top: 16)),
            Center(
              child: Text(
                "Selecione seus cursos",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            MyCheckBoxWidget(),
            Padding(padding: EdgeInsets.only(top: 80)),
            RaisedButton(
                child: Text("Cadastrar"),
                onPressed: (){
                  final String nome = _controladorNome.text;
                  final int? quantidade = int.tryParse(_controladorEmail.text);
                  final double? valor = double.tryParse(_controladorIdade.text);
                })
          ],
        ),
      ),
    );
  }
}

class MyCheckBoxWidget extends StatefulWidget {
  const MyCheckBoxWidget({Key? key}) : super(key: key);

  @override
  State<MyCheckBoxWidget> createState() => _MyCheckBoxWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyCheckBoxWidgetState extends State<MyCheckBoxWidget> {
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;
  bool _isChecked4 = false;


  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Column(
      children: <Widget>[
        CheckboxListTile(
          title: const Text("Curso de TI"),
          subtitle: const Text("Aprenda a fazer c??digos"),
          secondary: const Icon(Icons.computer),
          activeColor: Colors.blueAccent,
          checkColor: Colors.black,
          selected: _isChecked1,
          value: _isChecked1,
          onChanged: (value) {
            setState(() {
              _isChecked1 = value! ? true : false;
            });
          },
        ),

        CheckboxListTile(
          title: const Text("Curso de Advocacia"),
          subtitle: const Text("Aprenda a ser o advogado do diabo"),
          secondary: const Icon(Icons.monetization_on_outlined),
          activeColor: Colors.blueGrey,
          checkColor: Colors.black,
          selected: _isChecked2,
          value: _isChecked2,
          onChanged: (value) {
            setState(() {
              _isChecked2 = value! ? true : false;
            });
          },
        ),

        CheckboxListTile(
          title: const Text("Curso de Ingl??s"),
          subtitle: const Text("Learn to speak english"),
          secondary: const Icon(Icons.chat),
          activeColor: Colors.redAccent,
          checkColor: Colors.black,
          selected: _isChecked3,
          value: _isChecked3,
          onChanged: (value) {
            setState(() {
              _isChecked3 = value! ? true : false;
            });
          },
        ),

        CheckboxListTile(
          title: const Text("Curso de Espanhol"),
          subtitle: const Text("Aprender a hablar espa??ol"),
          secondary: const Icon(Icons.chat),
          activeColor: Colors.deepOrangeAccent,
          checkColor: Colors.black,
          selected: _isChecked4,
          value: _isChecked4,
          onChanged: (bool? value) {
            setState(() {
              _isChecked4 = value! ? true : false;
            });
          },
        ),
      ],
    );
  }
}

