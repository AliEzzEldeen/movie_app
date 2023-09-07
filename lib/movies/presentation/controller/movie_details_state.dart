part of 'movie_details_bloc.dart';

class MovieDetailsState extends Equatable {
  final MovieDetail? movieDetail;
  final RequstState movieDetailsState;
  final String movieDetailsMessage;
  final List<Recommendation>? recommendation;
  final RequstState recommendationState;
  final String recommendationMessage;

  MovieDetailsState copyWith({
    MovieDetail? movieDetail,
    RequstState? movieDetailsState,
    String? movieDetailsMessage,
    List<Recommendation>? recommendation,
    RequstState? recommendationState,
    String? recommendationMessage,
  }) {
    return MovieDetailsState(
      movieDetail: movieDetail ?? this.movieDetail,
      movieDetailsState: movieDetailsState ?? this.movieDetailsState,
      movieDetailsMessage: movieDetailsMessage ?? this.movieDetailsMessage,
      recommendation: recommendation ?? this.recommendation,
      recommendationState: recommendationState ?? this.movieDetailsState,
      recommendationMessage:
      recommendationMessage ?? this.recommendationMessage,
    );
  }

  const MovieDetailsState({
    this.movieDetail,
    this.movieDetailsState = RequstState.isLoading,
    this.movieDetailsMessage = '',
    this.recommendation = const[],
    this.recommendationState = RequstState.isLoading,
    this.recommendationMessage = '',
  });

  @override
  List<Object?> get props => [
        movieDetail,
        movieDetailsState,
        movieDetailsMessage,
        recommendation,
        recommendationState,
        recommendationMessage,
      ];
}
