import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(ComThemes());
}

class ComThemes extends StatelessWidget {
  final appName = "Tematizando os Themes";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(brightness: Brightness.dark,
      primaryColor: Colors.indigoAccent,
      accentColor: Colors.blueAccent,
      fontFamily: "RobotoMono-Bold",
      textTheme: TextTheme(
        headline2: TextStyle(fontSize: 70.0, fontWeight: FontWeight.w600),
        headline6: TextStyle(fontSize: 70.0, fontWeight: FontWeight.w300),
        bodyText2: TextStyle(fontSize: 14.0, fontFamily: "Raleway-Italic"),
      ),
      ),
      home: MyThemes(
        title: appName,
      ),
    );
  }
}

class MyThemes extends StatelessWidget {
  final String title;
  const MyThemes({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          color: Theme.of(context).accentColor,
          child: Text("Textinho H6 com cor de fundo",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(
            colorScheme: Theme.of(context).colorScheme.copyWith(
                secondary: Colors.lightGreen
            ),
        ),
        child: FloatingActionButton(onPressed: null,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
