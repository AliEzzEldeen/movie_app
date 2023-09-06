import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/movies/domain/entities/movies.dart';

abstract class BaseMoviesRepository{
  Future<Either<Failure ,List<Movies>>> getNowPlaying();
  Future<Either<Failure ,List<Movies>>> getPopularMovies();
  Future<Either<Failure ,List<Movies>>> getTopRateMovies();
}