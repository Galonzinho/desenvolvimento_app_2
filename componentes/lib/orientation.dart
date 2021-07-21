import 'package:flutter/material.dart';

void main() {
  runApp(ComOrientation());
}

class ComOrientation extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
    final appTitle = "Ajusta de Orientação";

    return MaterialApp(
      title: appTitle,
      home: OrientationList(
        title: appTitle
      ),
    );
  }
}

class OrientationList extends StatelessWidget {
  final String title;
  const OrientationList({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.deepPurple,
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
            children: List.generate(100, (index) {
             return Center(
               child: Text("Texto $index",
               style: Theme.of(context).textTheme.headline4,
               ),
             );
            }
            ),
          );
        }
      ),
    );
  }
}