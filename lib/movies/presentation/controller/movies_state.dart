import 'package:equatable/equatable.dart';
import 'package:movies_app/core/utils/enum.dart';
import 'package:movies_app/movies/domain/entities/movies.dart';

class MoviesState extends Equatable {
  final List<Movies> nowPlayingMovies;
  final RequstState nowPlayingState;
  final String nowPlayingMessage;
  final List<Movies> popularMovies;
  final RequstState popularState;
  final String popularMessage;
  final List<Movies> topRatedMovies;
  final RequstState topRatedState;
  final String topRatedMessage;

  const MoviesState({
    this.nowPlayingMovies = const [],
    this.nowPlayingState = RequstState.isLoading,
    this.nowPlayingMessage = '',
    this.popularMovies = const [],
    this.popularState = RequstState.isLoading,
    this.popularMessage = '',
    this.topRatedMovies = const [],
    this.topRatedState = RequstState.isLoading,
    this.topRatedMessage = '',
  });

  MoviesState copyWith({
    List<Movies>? nowPlayingMovies,
    RequstState? nowPlayingState,
    String? nowPlayingMessage,
    List<Movies>? popularMovies,
    RequstState? popularState,
    String? popularMessage,
    List<Movies>? topRatedMovies,
    RequstState? topRatedState,
    String? topRatedMessage,
  }) {
    return MoviesState(
      nowPlayingMovies: nowPlayingMovies ?? this.popularMovies,
      nowPlayingState: nowPlayingState ?? this.nowPlayingState,
      nowPlayingMessage: nowPlayingMessage ?? this.nowPlayingMessage,
      popularMovies: popularMovies ?? this.popularMovies,
      popularState: popularState ?? this.popularState,
      popularMessage: popularMessage ?? this.popularMessage,
      topRatedMovies: popularMovies ?? this.topRatedMovies,
      topRatedState: popularState ?? this.topRatedState,
      topRatedMessage: popularMessage ?? this.topRatedMessage,
    );
  }

  @override
  List<Object?> get props => [
        nowPlayingMovies,
        nowPlayingState,
        nowPlayingMessage,
        popularMovies,
        popularState,
        popularMessage,
        topRatedMovies,
        topRatedState,
        topRatedMessage,
      ];
}
