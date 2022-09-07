import 'package:flutter/material.dart';

class Movie {
  int? id;
  String? title;
  double? voteAverage;
  String? overview;
  String? posterPath;

  Movie(this.id, this.title, this.voteAverage, this.overview, this.posterPath);

  Movie.fromJson(Map<String, dynamic> parseJson) {
    this.id = parseJson['id'];
    this.title = parseJson['title'];
    this.voteAverage = parseJson['voteAverage'];
    this.overview = parseJson['overview'];
    this.posterPath = parseJson['poster_path'];
  }
}