import 'package:star_wars_flutter_demo/models/movie.dart';


class MoviesWrapper{

  // atributos da classe MoviesWrapper
  final int count;
  final int next;
  final int previous;
  final List<Movie> movies;

  // Construtor default da classe
  MoviesWrapper({
    this.count,
    this.next,
    this.previous,
    this.movies
  });


  // funcao que instancia um novo objeto MoviesWrapper e ja seta os campos de acordo com o json
  factory MoviesWrapper.fromJson(Map<String, dynamic> json){

    /* aqui eu separo apenas o campo 'results' do json, e vou interando sobre cada
     elemento, já convertendo usando a funcao da classe Movie, armazena o resultado na lista de movie*/
    var jsonResults = json['results'] as List;
    List<Movie> moviesList = jsonResults.map((jsonMovie) =>
      Movie.fromJson(jsonMovie)).toList();

    // retorna um novo objeto da classe MoviesWrapper, e seta seus campos
    return MoviesWrapper(
      count: json['count'],
      next: json['next'],
      previous: json['previous'],
      movies: moviesList
    );

  }

}