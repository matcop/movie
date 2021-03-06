// Generated by https://quicktype.io

import 'package:http/http.dart';

class Peliculas {
  List<Pelicula> items = new List();
  Peliculas();
  Peliculas.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final pelicula = new Pelicula.fromJsonMap(item);
      items.add(pelicula);
    }
  }
}

class Pelicula {
  bool adult;
  String backdropPath;
  List<int> genreIds;
  int id;
  String originalLanguage;
  String originalTitle;
  String overview;
  double popularity;
  String posterPath;
  String releaseDate;
  String title;
  bool video;
  double voteAverage;
  int voteCount;

  Pelicula({
    this.backdropPath,
    this.adult,
    this.genreIds,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  Pelicula.fromJsonMap(Map<String, dynamic> json) {
    backdropPath = json['backdrop_path'];
    adult = json['adult'];
    voteAverage = json['vote_average'] / 1;
    id = json['id'];
    popularity = json['popularity'] / 1;
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    genreIds = json['genre_ids'].cast<int>();
    posterPath = json['poster_path'];
    releaseDate = json['release_date'];
    title = json['title'];
    video = json['video'];
    voteCount = json['vote_count'];
  }

  getPosterImg() {
    if (posterPath == null) {
      return 'https://www.indiaspora.org/wp-content/uploads/2018/10/image-not-available.jpg';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$posterPath';
    }
  }
}
