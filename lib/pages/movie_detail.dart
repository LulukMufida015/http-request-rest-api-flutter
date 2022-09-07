import 'package:flutter/material.dart';
import 'package:movie_catalog/models/movie.dart';

class MovieDetail extends StatelessWidget {
  final Movie movie;
  final String imgPath = 'https://image.tmdb.org/t/p/w500/';
  MovieDetail(this.movie);

  @override
  Widget build(BuildContext context) {
    String path;
    if(movie.posterPath != null) {
      var posterPath = movie.posterPath;
      path = imgPath + posterPath!;
    } else {
      path = 'https://images.freeimages.com/images/large-previews/5eb/movie-clapboard-1184339.jpg';
    }
    double height = MediaQuery.of(context).size.height;
    var title2 = movie.title;
    var movie2 = movie;
    var overview = movie2.overview;
    return Scaffold(
      appBar: AppBar(
        title: Text(title2!),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                height: height/1.5,
                child: Image.network(path),
              ),
              Container(
                child: Text(overview!),
                padding: EdgeInsets.only(left: 16, right:16,)
              )
            ],
          ),
        ),
      ),
    );
  }
}