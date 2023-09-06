import 'package:dio/dio.dart';
import 'package:movies_app/core/constance.dart';
import 'package:movies_app/core/error/exception.dart';
import 'package:movies_app/core/network/error_message_network.dart';
import 'package:movies_app/movies/data/models/movies_model.dart';

abstract class BaseMoviesRemoteDataSource {
  Future<List<MoviesModel>> getNowPlayingMovies();

  Future<List<MoviesModel>> getPopularMovies();

  Future<List<MoviesModel>> getTopRateMovies();
}

class MoviesRemoteDataSource extends BaseMoviesRemoteDataSource {
  @override
  Future<List<MoviesModel>> getNowPlayingMovies() async {
    final response = await Dio().get(AppConstance.nowPlayingMoviesPath);
    if (response.statusCode == 200) {
      return List<MoviesModel>.from((response.data['results'] as List)
          .map((e) => MoviesModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageNetwork: ErrorMessageNetwork.fromJson(response.data));
    }
  }

  @override
  Future<List<MoviesModel>> getPopularMovies() async {
    final response = await Dio().get(AppConstance.popularMoviesPath);
    if (response.statusCode == 200) {
      return List<MoviesModel>.from((response.data['results'] as List)
          .map((e) => MoviesModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageNetwork: ErrorMessageNetwork.fromJson(response.data));
    }
  }

  @override
  Future<List<MoviesModel>> getTopRateMovies() async {
    final response = await Dio().get(AppConstance.topRateMoviesPath);
    if (response.statusCode == 200) {
      return List<MoviesModel>.from((response.data['results'] as List)
          .map((e) => MoviesModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageNetwork: ErrorMessageNetwork.fromJson(response.data));
    }
  }
}
