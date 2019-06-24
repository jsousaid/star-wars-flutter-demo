import 'package:flutter/material.dart';
import 'package:star_wars_flutter_demo/ui/movies/movies_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MoviesList(title: 'Star Wars Demo'),
    );
  }
}
