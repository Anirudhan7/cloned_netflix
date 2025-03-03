import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netflix_clone/api_constants/api_constant.dart';
import 'package:netflix_clone/models/movie.dart';

class Api {
  static const _trendingUrl =
      "https://api.themoviedb.org/3/trending/movie/day?api_key=${ApiConstants.apiKey}";

  Future<List<Movies>> getTrendingMovies() async {
    final response = await http.get(Uri.parse(_trendingUrl));
    if (response.statusCode == 200) {
      final decodeData = json.decode(response.body)['results'] as List;
      print(decodeData);
      return decodeData.map((movie) => Movies.fromJson(movie)).toList();
    } else {
      throw Exception("Something Happened");
    }
  }

  static const _topRated =
      "https://api.themoviedb.org/3/movie/top_rated?api_key=${ApiConstants.apiKey}";

  Future<List<Movies>> getTopRatedMovies() async {
    final response = await http.get(Uri.parse(_topRated));
    if (response.statusCode == 200) {
      final decodeData = json.decode(response.body)['results'] as List;
      return decodeData.map((movie) => Movies.fromJson(movie)).toList();
    } else {
      throw Exception("Error has occured");
    }
  }

  static const _top10TvShows =
      "https://api.themoviedb.org/3/movie/upcoming?api_key=${ApiConstants.apiKey}";

  Future<List<Movies>> getTop10TvShows() async {
    final response = await http.get(Uri.parse(_top10TvShows));
    if (response.statusCode == 200) {
      final decodeData = json.decode(response.body)['results'] as List;
      return decodeData.map((movie) => Movies.fromJson(movie)).toList();
    } else {
      throw Exception("Error has occured");
    }
  }

  Future<List<String>> getDownlaodImages() async {
    final response = await http.get(Uri.parse(_top10TvShows));
    if (response.statusCode == 200) {
      final decodeData = json.decode(response.body)['results'] as List;
      return decodeData
          .map((movie) => Movies.fromJson(movie).posterPath)
          .toList();
    } else {
      throw Exception("An error has occured while getting the download images");
    }
  }

  static const _forSearch =
      "https://api.themoviedb.org/3/trending/movie/day?api_key=${ApiConstants.apiKey}";
  Future<List<Movies>> forSearchDara() async {
    final response = await http.get(Uri.parse(_forSearch));
    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body)["results"] as List;
      return responseData.map((movie) => Movies.fromJson(movie)).toList();
    } else {
      throw Exception('Something went wrong');
    }
  }

  Future<List<Movies>> searchResult(String movie) async {
    String resultApi =
        "https://api.themoviedb.org/3/search/movie?api_key=${ApiConstants.apiKey}&query=$movie";
    final response = await http.get(Uri.parse(resultApi));
    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body)["results"] as List;
      return responseData.map((movie) => Movies.fromJson(movie)).toList();
    } else {
      throw Exception('something went wrong');
    }
  }
}
