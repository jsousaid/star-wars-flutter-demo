
import 'package:flutter/material.dart';
import 'package:star_wars_flutter_demo/data/remote/api.dart';
import 'package:star_wars_flutter_demo/models/movies_wrapper.dart';
import 'package:star_wars_flutter_demo/components/list.dart';
import 'package:star_wars_flutter_demo/components/progress_indicator.dart';
import 'package:http/http.dart' as http;


class MoviesList extends StatefulWidget{

  MoviesList({Key key, this.title}) : super (key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => new _MoviesListState();
}

class _MoviesListState extends State<MoviesList>{

  final _api = Api();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: FutureBuilder<MoviesWrapper>(
        future: _api.fetchMovies(http.Client()),
        builder: (context, snapshot){
          if (snapshot.hasError){
            print('ERROR: ' + snapshot.error.toString());
          }
          return snapshot.hasData ? MoviesListWidget(wrapper: snapshot.data) : ActivityIndicator();
        },
      ),
    );
  }
}