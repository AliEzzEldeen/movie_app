import 'package:get_it/get_it.dart';
import 'package:movies_app/movies/data/Repository/movies_repository.dart';
import 'package:movies_app/movies/data/datasource/movies_remote_data_source.dart';
import 'package:movies_app/movies/domain/Repository/base_movies_repository.dart';
import 'package:movies_app/movies/domain/useCase/get_movie_details_usecase.dart';
import 'package:movies_app/movies/domain/useCase/get_now_playing_movies_usecase.dart';
import 'package:movies_app/movies/domain/useCase/get_popular_movies_usecase.dart';
import 'package:movies_app/movies/domain/useCase/get_recommendation_usecase.dart';
import 'package:movies_app/movies/domain/useCase/get_top_rate_movies_usecase.dart';
import 'package:movies_app/movies/presentation/controller/movie_details_bloc.dart';
import 'package:movies_app/movies/presentation/controller/movies_bloc.dart';

final getIt = GetIt.instance;

class ServicesLocator {
  void init() {
    // Bloc

    getIt.registerLazySingleton(() => MoviesBloc(
      getIt(),
      getIt(),
      getIt(),
        ));
    getIt.registerLazySingleton(() => MovieDetailsBloc(getIt(),getIt()));


    //USer Cases

    getIt.registerLazySingleton(() => GetNowPlayingMoviesUseCase(getIt()));
    getIt.registerLazySingleton(() => GetPopularMoviesUseCase(getIt()));
    getIt.registerLazySingleton(() => GetTopRatedMoviesUserCase(getIt()));
    getIt.registerLazySingleton(() => GetMovieDetailUseCase(getIt()));
    getIt.registerLazySingleton(() => GetRecommendationUseCase(getIt()));

    //Repo
    getIt.registerLazySingleton<BaseMoviesRepository>(() => MoviesRepository(getIt()));

    //Data Source
    getIt.registerLazySingleton<BaseMoviesRemoteDataSource>(
        () => MoviesRemoteDataSource());
  }
}
