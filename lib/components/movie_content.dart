
import 'package:flutter/material.dart';
import 'package:star_wars_flutter_demo/models/movie.dart';

class MovieContent extends StatelessWidget{
  final Movie movie;

  const MovieContent({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      movie != null ? _buildContent(context) : _onError();

  Widget _buildContent(BuildContext context){
    return Container(
      constraints: BoxConstraints.expand(),
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: <Widget>[
          Text(
            'Episode: ' + movie.episodeId.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.0),
          ),
          Text(
            '\nRelease date: ' + movie.releaseDate,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.0),
          ),
          Text(
              '\nDirector: ' + movie.director,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
          ),
          Text(
            '\nProducers: ' + movie.producer,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.0),
          ),
          Container(
            padding: EdgeInsets.only(top: 16.0),
            child: Text(
              movie.openingCrawl,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _onError(){
    return Container();
  }
  

}