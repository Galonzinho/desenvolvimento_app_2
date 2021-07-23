import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'splash.dart';

void main() => runApp(MinhasRotas());

class MinhasRotas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        ExtractArgumentsScreen.routeName: (context) => ExtractArgumentsScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == PassArgumentsScreen.routeName) {
          final args = settings.arguments as ScreenArguments;
          return MaterialPageRoute(
            builder: (context) {
              return PassArgumentsScreen(
                title: args.title,
                message: args.message,
              );
            },
          );
        }
        assert(false, 'Precisa implemetar ${settings.name}');
        return null;
      },
      title: 'Navegação com argumentos',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Rotas Nomeadas",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(30),
              child: Image.asset("imagens/route.jpg"),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    ExtractArgumentsScreen.routeName,
                    arguments: ScreenArguments(
                      "Recebendo do Route",
                      "Sobre as Rotas Nomeadas e o Flutter",
                    ),
                  );
                },
                child: Text(
                  "Clique para enviar os dados",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, PassArgumentsScreen.routeName,
                      arguments: ScreenArguments(
                        "O que é o Flutter?",
                        "",
                      ));
                },
                child: Text("Navegar até a rota com imagem do Flutter"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ExtractArgumentsScreen extends StatelessWidget {
  static const routeName = "/extractArguments";

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          args.title,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(args.message),
            ),
            Image.asset("imagens/route2.jpg"),
            Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "O roteamento é uma das coisas mais básicas que seu aplicativo deve ter para fazer algo significativo."
                  " No entanto, navegar entre as páginas pode rapidamente se tornar uma bagunça . Não tem que ser assim!"
                  " Existem várias opções de roteamento . Alguns criam muita desordem , outros não podem facilitar a"
                  " passagem de dados entre rotas e ainda outros exigem que você configure uma biblioteca de terceiros."
                  " A opção que você está indo para aprender sobre em este tutorial é o melhor dos dois mundos - first-party"
                  " e ainda limpa para uso.",
                  style: TextStyle(fontSize: 16),
                )),
            Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Antes de podermos fazer o roteamento da maneira certa , primeiro precisamos ter algumas páginas"
                  " para navegar entre elas. Ao configurá-los, também não é ruim mostrar a forma mais básica de navegação da"
                  " qual queremos fugir.Existem 2 páginas e a segunda página recebe os dados da primeira. Enviamos MaterialPageRoutes"
                  " diretamente para o navegador, o que cria uma grande quantidade de código clichê . Quanto mais páginas seu aplicativo"
                  " tiver, pior ele ficará , e é fácil se perder em todas essas rotas especificadas em todo o lugar.",
                  style: TextStyle(fontSize: 16),
                ))
          ],
        ),
      ),
    );
  }
}

class PassArgumentsScreen extends StatelessWidget {
  static const routeName = "/passArguments";

  final dynamic title;
  final dynamic message;

  const PassArgumentsScreen(
      {Key? key, required this.title, required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Center(
          child: Column(
        children: [
          Text(message),
          Padding(
            padding: EdgeInsets.all(10),
            child: Image.asset("imagens/flutter.png"),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Em seu site, a definição oficial é: Flutter é um kit de ferramentas do Google para"
              " construir aplicações lindas, nativamente compiladas para mobile, web, desktop à partir"
              " de um único código-base.Resumindo: você vai escrever o código apenas 1 vez e seu aplicativo"
              " vai poder ser executado em até 4 plataformas diferentes.Utilizando a linguagem Dart "
              "(que também foi criada pelo Google), Flutter oferece uma incrível experiência para desenvolvedores"
              " e usuários.Até a versão 1.2, Flutter entregava apps para iOS e Android. Quando a versão 1.5 foi"
              " lançada, durante o Google IO 2019, o post oficial de lançamento termina com a seguinte frase: Flutter"
              " não é mais um framework mobile, mas um framework multi-plataforma.",
              style: TextStyle(fontSize: 16),
            ),
          )
        ],
      )),
    );
  }
}

class ScreenArguments {
  final dynamic title;
  final dynamic message;

  ScreenArguments(this.title, this.message);
}
