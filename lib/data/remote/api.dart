
import 'dart:convert';
import 'dart:async';
import 'package:star_wars_flutter_demo/models/movies_wrapper.dart';
import 'package:http/http.dart' as http;

class Api{

  static final String _baseUrl = "https://swapi.co/api";


  // Consome a api de filmes, e retorna o json parseado
  Future<MoviesWrapper> fetchMovies(http.Client client) async{
    final response = await client.get(_baseUrl + '/films');
    return _parseMovies(response.body);
  }

  // faz o parse do json, usando o metodo construtor
  MoviesWrapper _parseMovies(String responseBody) {
    final parsed = json.decode(responseBody);
    return MoviesWrapper.fromJson(parsed);
  }
}