import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/movies/domain/Repository/base_movies_repository.dart';
import 'package:movies_app/movies/domain/entities/movies.dart';

class GetTopRatedMoviesUserCase{
  final BaseMoviesRepository baseMoviesRepository;

  GetTopRatedMoviesUserCase(this.baseMoviesRepository);

  Future<Either<Failure, List<Movies>>> execute()async{
    return await baseMoviesRepository.getTopRateMovies();
  }
}