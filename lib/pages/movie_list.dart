import 'package:flutter/material.dart';
import 'package:movie_catalog/service/http_service.dart';

class MovieList extends StatefulWidget{
  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList>{
  int? moviesCount;
  late List movies;
  HttpService? service;

  Future initialize() async {
    movies = [];
    movies = (await service?.getPopulasMovies())!;
    setState(() {
      moviesCount = movies.length;
      movies = movies;
    });
  }

  @override
  void initState(){
    service = HttpService();
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Popular Movies"),
      ),
      body: ListView.builder(
        itemCount: (this.moviesCount == null) ? 0 : this.moviesCount,
        itemBuilder: (context, int position) {
          return Card(
            color: Colors.white,
            elevation: 2.0,
            child: ListTile(
              title: Text(movies[position].title),
              subtitle: Text (
                'Rating = ' + movies[position].voteAverage.toString()
              ),
            ),
          );
        },
      ),
    );
  }
}