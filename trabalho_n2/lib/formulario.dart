import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'aluno.dart';
import 'botaoradio.dart';

void main() => runApp(Formulario());

class Formulario extends StatefulWidget {
  @override
  FormularioState createState() {
    return new FormularioState();
  }
}

class FormularioState extends State<Formulario> {

  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorEmail = TextEditingController();
  final TextEditingController _controladorIdade = TextEditingController();
  bool validarNome = false;
  bool validarEmail = false;
  bool validarIdade = false;
  bool _isChecked = false;

  void dispose(){
    _controladorNome.dispose();
    _controladorEmail.dispose();
    _controladorIdade.dispose();
}

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
            Padding(padding: EdgeInsets.only(left: 8, right: 8),
            child: TextField(
              autofocus: true,
              controller: _controladorNome,
              decoration: InputDecoration(
                labelText: "Nome:",
                errorText: validarNome ? "Campo vazio" : null,
              ),
              keyboardType: TextInputType.text,
            ),
            ),
            Padding(padding: EdgeInsets.only(top: 16)),
            Padding(padding: EdgeInsets.only(left: 8, right: 8),
            child: TextField(
              controller: _controladorEmail,
              decoration: InputDecoration(
                labelText: "E-mail:",
                errorText: validarEmail ? "Campo vazio" : null,
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            ),
            Padding(padding: EdgeInsets.only(top: 16)),
            Padding(padding: EdgeInsets.only(left: 8, right: 8),
            child: TextField(
              controller: _controladorIdade,
              decoration: InputDecoration(
                  labelText: "Idade:",
                  errorText: validarIdade ? "Campo vazio" : null,
              ),
              keyboardType: TextInputType.number,
            ),
            ),
            Padding(padding: EdgeInsets.only(top: 16)),
            Center(
              child: Text(
                "Selecione seus cursos",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            MyCheckBoxWidget(),
            Padding(padding: EdgeInsets.only(top: 10),),
            CustomRadioButtom(),
            Padding(padding: EdgeInsets.only(bottom: 15)),
            RaisedButton(
              color: Colors.cyanAccent,
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text("Cadastrar"),
                onPressed: (){
                  final String nome = _controladorNome.text;
                  final String email = _controladorEmail.text;
                  final int? valor = int.tryParse(_controladorIdade.text);
                  setState(() {
                    _controladorNome.text.isEmpty ? validarNome = true : validarNome = false;
                    _controladorEmail.text.isEmpty ? validarEmail = true : validarEmail = false;
                    _controladorIdade.text.isEmpty ? validarIdade = true : validarIdade = false;
                  });
                }),
            Padding(padding: EdgeInsets.only(top: 40)),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.redAccent,
                  textStyle: TextStyle(fontSize: 20),
                ),
                child: Text("Voltar ao menu"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            )
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
          subtitle: const Text("Aprenda a fazer códigos"),
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
          title: const Text("Curso de Inglês"),
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
          subtitle: const Text("Aprender a hablar español"),
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

