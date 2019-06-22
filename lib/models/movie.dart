class Movie{

  // atributos da classe movie
  final String title;
  final String openingCrawl;
  final String director;
  final String producer;
  final String releaseDate;
  final int episodeId;

  // construtor default da classe novie
  Movie({
    this.title,
    this.openingCrawl,
    this.director,
    this.producer,
    this.releaseDate,
    this.episodeId
  });

  // construtor que recebe um json e já seta os campos instanciando movie
  factory Movie.fromJson(Map<String, dynamic> json){
    return Movie(
      title: json['title'],
      releaseDate: json['release_date'],
      episodeId: json['episode_id'],
      openingCrawl: json['opening_crawl'],
      director: json['director'],
      producer: json['producer']
    );
  }

}
