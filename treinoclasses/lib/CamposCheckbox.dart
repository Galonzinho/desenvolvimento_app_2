import 'package:flutter/material.dart';

class CamposCheckbox extends StatefulWidget {
  const CamposCheckbox({Key? key}) : super(key: key);

  @override
  _CamposCheckboxState createState() => _CamposCheckboxState();
}

class _CamposCheckboxState extends State<CamposCheckbox> {
  //atributos da classe
  bool _selecionarValor = false;
  bool _valorCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trabalhando com Checkbox"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            CheckboxListTile(
                title: Text("Selecione a opção desejada: "),
                value: _selecionarValor, onChanged: (_valorCheck){
                  setState(() {
                    if(_selecionarValor){
                      _selecionarValor = false;
                    }else{
                      _selecionarValor = true;
                    }
                  });
                  print("Valor Selecionado = " + _selecionarValor.toString());
              } //onChanged: (_valorCheck)
            )
          ],
        ),
      ),
    );
  }
}
