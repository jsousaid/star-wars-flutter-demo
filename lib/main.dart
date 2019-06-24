import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Esse widget é a raiz da aplicacao.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Este é o tema da sua aplicacao
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: 'Toia Chata'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  // Construtor que seta o key - da superclasse "StatefulWidget" - e o titulo que recebe por quem ta chamando a classe
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  // aqui eu já defino que o método "_MyHomePageState" vai ser um estado da classe home
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Este metodo é rodado novamente toda vez que setState for chamado, por exemplo como foi feito pelo metodo "_incrementCounter" acima.
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Quantas vezes a toia é chata',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Incrementar',
        child: Icon(Icons.add),
      ),
    );
  }
}