
import 'package:flutter/material.dart';
import 'package:star_wars_flutter_demo/models/movies_wrapper.dart';
import 'package:star_wars_flutter_demo/components/list_cell.dart';

class MoviesListWidget extends StatelessWidget{

  final MoviesWrapper wrapper;

  MoviesListWidget({Key key, this.wrapper}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // Seto o espacamento de cada elemento
      padding: EdgeInsets.all(16.0),
      itemCount: wrapper.movies.length,
      // aqui eu passo o que eu vou renderizar em cada linha, poderia criar tudo aqui dentro, mas ficaria mto aninhamento
      itemBuilder: (context, index){
        return ListCell(movies: wrapper.movies, index: index);
      }
    );
  }

}