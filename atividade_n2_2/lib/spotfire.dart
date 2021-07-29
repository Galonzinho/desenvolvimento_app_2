import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(SpotFire());

class SpotFire extends StatefulWidget {
  const SpotFire({Key? key}) : super(key: key);

  @override
  _SpotFireState createState() => _SpotFireState();
}

class _SpotFireState extends State<SpotFire> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(12),
                child: Image.asset("imagens/darklogo.jpg"),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.calendar_today,),
                  Icon(Icons.access_time_outlined),
                  Icon(Icons.location_pin),
                ]
              ),
              Expanded(child:
              ListView(
                padding: EdgeInsets.all(8),
                children: [
                  ListTile(
                    leading: Icon(Icons.info_outline),
                    title: Text("Abandone sua Alma"),
                  ),
                  ListTile(
                    leading: Icon(Icons.info_outline),
                    title: Text("Sofrimento é bem visto"),
                  ),
                  ListTile(
                    leading: Icon(Icons.info_outline),
                    title: Text("Aproveite sua estadia"),
                  ),
                  ListTile(

                  ),
                  ListTile(
                    leading: Icon(Icons.info_outline),
                    title: Text("#DarkSouls e você"),
                  ),
                ],
              )
              ),
              ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ListaSpotFire()));
              },
                  child: Text("SHOWS",
                    style: TextStyle(
                      fontSize: 30
                    ),
                  ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 35)),
              Text("HOME",
                style: TextStyle(fontSize: 35,
                  color: Colors.grey,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 25))
            ],
          ),
        ),
      ),
    );
  }
}

class ListaSpotFire extends StatelessWidget {
  const ListaSpotFire({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lista de Músicas da série Souls",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Colors.black,
      ),
      body: MyCheckBoxWidget(),
    );
  }
}


class MyCheckBoxWidget extends StatefulWidget {
  const MyCheckBoxWidget({Key? key}) : super(key: key);

  @override
  State<MyCheckBoxWidget> createState() => _MyCheckBoxWidgetState();
}

class _MyCheckBoxWidgetState extends State<MyCheckBoxWidget> {
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;
  bool _isChecked4 = false;
  bool _isChecked5 = false;
  bool _isChecked6 = false;
  bool _isChecked7 = false;
  bool _isChecked8 = false;
  bool _isChecked9 = false;
  bool _isChecked10 = false;
  bool _isChecked11 = false;
  bool _isChecked12 = false;


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
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(padding: EdgeInsets.only(bottom: 10)),

        CheckboxListTile(
          title: const Text("Ornstein and Smough"),
          subtitle: const Text("OST da batalha de Ornstein e Smough de Dark Souls 1"),
          secondary: const Icon(Icons.music_note_outlined),
          activeColor: Colors.redAccent,
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
          title: const Text("Bell Gargoyles"),
          subtitle: const Text("OST da batalha contra as Gárgulas do Sino de Dark Souls 1"),
          secondary: const Icon(Icons.music_note_outlined),
          activeColor: Colors.redAccent,
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
          title: const Text("Majula"),
          subtitle: const Text("OST de Majula, a 'Firelink Shrine' de Dark Souls 2"),
          secondary: const Icon(Icons.music_note_outlined),
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
          title: const Text("Firelink Shrine (DS3)"),
          subtitle: const Text("OST de Firelink Shrine do Dark Souls 3"),
          secondary: const Icon(Icons.music_note_outlined),
          activeColor: Colors.redAccent,
          checkColor: Colors.black,
          selected: _isChecked4,
          value: _isChecked4,
          onChanged: (bool? value) {
            setState(() {
              _isChecked4 = value! ? true : false;
            });
          },
        ),

        CheckboxListTile(
          title: const Text("Firelink Shrine (DS1)"),
          subtitle: const Text("OST de Firelink Shrine do Dark Souls 1"),
          secondary: const Icon(Icons.music_note_outlined),
          activeColor: Colors.redAccent,
          checkColor: Colors.black,
          selected: _isChecked5,
          value: _isChecked5,
          onChanged: (bool? value) {
            setState(() {
              _isChecked5 = value! ? true : false;
            });
          },
        ),
        CheckboxListTile(
          title: const Text("Gwyn"),
          subtitle: const Text("OST da batalha contra o chefe final de Dark Souls 1, Gwyn"),
          secondary: const Icon(Icons.music_note_outlined),
          activeColor: Colors.redAccent,
          checkColor: Colors.black,
          selected: _isChecked6,
          value: _isChecked6,
          onChanged: (bool? value) {
            setState(() {
              _isChecked6 = value! ? true : false;
            });
          },
        ),
        CheckboxListTile(
          title: const Text("Gwynevere"),
          subtitle: const Text("OST da deusa Gwynevere, deusa da luz solar"),
          secondary: const Icon(Icons.music_note_outlined),
          activeColor: Colors.redAccent,
          checkColor: Colors.black,
          selected: _isChecked7,
          value: _isChecked7,
          onChanged: (bool? value) {
            setState(() {
              _isChecked7 = value! ? true : false;
            });
          },
        ),
        CheckboxListTile(
          title: const Text("Aldrich"),
          subtitle: const Text("OST de Aldrich, o devorador de deuses"),
          secondary: const Icon(Icons.music_note_outlined),
          activeColor: Colors.redAccent,
          checkColor: Colors.black,
          selected: _isChecked8,
          value: _isChecked8,
          onChanged: (bool? value) {
            setState(() {
              _isChecked8 = value! ? true : false;
            });
          },
        ),
        CheckboxListTile(
          title: const Text("Taurus Demon"),
          subtitle: const Text("OST de Taurus demon, chefe em Dark Souls 1"),
          secondary: const Icon(Icons.music_note_outlined),
          activeColor: Colors.redAccent,
          checkColor: Colors.black,
          selected: _isChecked9,
          value: _isChecked9,
          onChanged: (bool? value) {
            setState(() {
              _isChecked9 = value! ? true : false;
            });
          },
        ),
        CheckboxListTile(
          title: const Text("Kalameet"),
          subtitle: const Text("OST de Kalameet, o dragão da calamidade"),
          secondary: const Icon(Icons.music_note_outlined),
          activeColor: Colors.redAccent,
          checkColor: Colors.black,
          selected: _isChecked10,
          value: _isChecked10,
          onChanged: (bool? value) {
            setState(() {
              _isChecked10 = value! ? true : false;
            });
          },
        ),
        CheckboxListTile(
          title: const Text("Crossbreed Priscila"),
          subtitle: const Text("OST de Priscila, a rainha nevada"),
          secondary: const Icon(Icons.music_note_outlined),
          activeColor: Colors.redAccent,
          checkColor: Colors.black,
          selected: _isChecked11,
          value: _isChecked11,
          onChanged: (bool? value) {
            setState(() {
              _isChecked11 = value! ? true : false;
            });
          },
        ),
        CheckboxListTile(
          title: const Text("Great Grey Wolf Sif"),
          subtitle: const Text("OST da batalha do grande lobo cinzento, Sif"),
          secondary: const Icon(Icons.music_note_outlined),
          activeColor: Colors.redAccent,
          checkColor: Colors.black,
          selected: _isChecked12,
          value: _isChecked12,
          onChanged: (bool? value) {
            setState(() {
              _isChecked12 = value! ? true : false;
            });
          },
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
      ],
    );
  }
}

