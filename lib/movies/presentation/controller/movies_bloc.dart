import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:movies_app/core/usecase/base_use_case.dart';
import 'package:movies_app/core/utils/enum.dart';
import 'package:movies_app/movies/domain/useCase/get_now_playing_movies_usecase.dart';
import 'package:movies_app/movies/domain/useCase/get_popular_movies_usecase.dart';
import 'package:movies_app/movies/domain/useCase/get_top_rate_movies_usecase.dart';
import 'package:movies_app/movies/presentation/controller/movies_event.dart';
import 'package:movies_app/movies/presentation/controller/movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  final GetPopularMoviesUseCase getPopularMoviesUseCase;
  final GetTopRatedMoviesUserCase getTopRatedMoviesUserCase;

  MoviesBloc(
    this.getNowPlayingMoviesUseCase,
    this.getPopularMoviesUseCase,
    this.getTopRatedMoviesUserCase,
  ) : super(const MoviesState()) {
    on<GetNowPlayingMoviesEvent>(_getNowPlayingMovies);

    on<GetPopularMoviesEvent>(_getPopularMovies);

    on<GetTopRatedMoviesEvent>(_getTopRatedMovies);
  }

  FutureOr<void> _getNowPlayingMovies(
    GetNowPlayingMoviesEvent event, Emitter<MoviesState> emit) async{

    final result = await getNowPlayingMoviesUseCase(const NoParameters());
    result.fold(
          (l) =>emit(state.copyWith(
        nowPlayingState: RequstState.error,
        nowPlayingMessage: l.message,
      )),

          (r) => emit(
        state.copyWith(
          nowPlayingMovies: r,
          nowPlayingState: RequstState.isLoaded,
        ),
      ),);
  }

  FutureOr<void> _getPopularMovies(GetPopularMoviesEvent event, Emitter<MoviesState> emit)async {
    final result = await getPopularMoviesUseCase(const NoParameters());
    result.fold(
          (l) => emit(state.copyWith(
        popularState: RequstState.error,
        popularMessage: l.message,
      )),
          (r) => emit(
        state.copyWith(
          popularMovies: r,
          popularState: RequstState.isLoaded,
        ),
      ),
    );
  }

  FutureOr<void> _getTopRatedMovies(GetTopRatedMoviesEvent event, Emitter<MoviesState> emit) async{
    final result = await getTopRatedMoviesUserCase(const NoParameters());
    result.fold(
          (l) => emit(state.copyWith(
        topRatedState: RequstState.error,
        topRatedMessage: l.message,
      )), (r) => emit(
        state.copyWith(
          topRatedMovies: r,
          topRatedState: RequstState.isLoaded,
        ),
      ),
    );
  }
}
