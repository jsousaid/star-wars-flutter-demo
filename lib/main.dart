import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Esse widget é a raiz da sua aplicacao.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Este é o tema da sua aplicacao
        //
        // Tente rodar sua apalicacao com "flutter run". Voce vai ver a
        // aplicacao com o toolbar azul. Entao, sem fechar o app, tente
        // mudar a primarySwatch abaixo para Colors.green e entao chame o
        // "hot reload" (pressione "r" no seu console quando voce roda "flutter run",
        // ou simplesmente salve suas mudancas para o "hot reload" funcionar na sua IDE, automaticamente).
        // Observe que o contador não voltou para zero; a aplicacao nao reiniciou.
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: 'Toia Chata'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  MyHomePage({Key key, this.title}) : super(key: key);

  // Este widget eh a pagina inicial da sua aplicacao. Ele é stateful, ou seja,
  // o objeto possui estado (definido abaixo) que contem campos que afetam
  // sua aparencia

  // Esta classe é a configuracao para o estado. Ele contém os valores (neste caso
  // o titulo) fornecido pelo seu pai (neste caso, o widget app) e
  // usado pelo metodo para construir o estado do metodo. Os campos no widget da subclasse
  // sempre sao marcados pelo "final"

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // Esta chamada para setState diz para o framework Flutter que alguma coisa tem
      // alterado o seu estado, que faz com que execute novamente o metodo
      // de construcao abaixo, para que a exibicao possa refletir os valores atualizados.
      // Se mudar o _counter sem chamar setState(), o metodo de compilacao nao seria
      // chamado novamente, e entao nada parece acontecer.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Este metodo é rodado novamente toda vez que setState for chamado, por exemplo como foi feito
    // pelo metodo _incrementCounter acima.
    //
    // O framework Flutter foi bem otimizado para executar metodo novamente
    // bem rápido, para que voce possa reconstruir qualquer coisa que precise ser atualizada,
    // em vez de precisar alterar individualmente instancias de widget  .
    return Scaffold(
      appBar: AppBar(
        // Aqui nos levamos o valor para o objeto MyHomePage que foi criado pelo
        // metodo App.build, e usado para setar o titulo do appbar.
        title: Text(widget.title),
      ),
      body: Center(
        // Center é um layout do widget. Leva um unico child e o
        // posiciona no meio do parent, nesse caso o child abaixo.
        child: Column(
          // Column vai além de um layout widget. Ele leva a lista de childrens e
          // organzia de forma vertical. Por padrao, o tamanho em si para caber o seu
          // children horizontalmente, e tenta ser tao alto quanto seu parent.
          //
          // Chame "debug painting" (pressione "p" no console, escolha a
          // acao "Toggle Debug Paint" para o Flutter Inspector no Android
          // Studio, ou o comando "Toggle Debug Paint" no Visual Studio Code)
          // para ver o wireframe para cada widget.
          //
          // Column possui varias propriedades para controlar o tamanho e
          // a posicao do children. Aqui é usado o mainAxisAlignment para
          // centralizar o children verticalmente; o eixo principal aqui é o eixo vertical
          // porque a coluna é vertical (o eixo central seria horizontal).
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
      ), // Essa virgula final torna a formatacao automática mais agrádavel para os métodos de criacao
    );
  }
}