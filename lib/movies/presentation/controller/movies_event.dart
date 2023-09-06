abstract class MoviesEvent {
  const MoviesEvent();

  @override
  List<Object> get props => [];
}

class GetNowPlayingMoviesEvent extends MoviesEvent {}

class GetPopularMoviesEvent extends MoviesEvent {}

class GetTopRatedMoviesEvent extends MoviesEvent {}