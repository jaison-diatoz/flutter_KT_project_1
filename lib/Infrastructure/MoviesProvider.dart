import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../Core/constants.dart';
import '../Domain/MoviesModel.dart';

class MoviesProvider extends ChangeNotifier {
  List<MovieModel?>? _movies = [];
  List<MovieModel?>? get movies => _movies;

  Future fetchMovieDetails() async {
    Dio dio = Dio();
    await dio
        .get(
            "${NetworkConfig().BASE_URL}discover/movie?api_key=${NetworkConfig().key}&adult=true&language=en-US&page=1")
        .then((value) {
      if (value.statusCode == 200 || value.statusCode == 201) {
        _movies = DiscoverMoviesModel.fromJson(value.data).results;
      }
    });
    notifyListeners();
  }
}
