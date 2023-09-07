import 'package:equatable/equatable.dart';
import 'package:movies_app/movies/domain/entities/genres.dart';

class MovieDetail extends Equatable {
  final String backdropPath;
  final List<Genres> genres;
  final int id;
  final String overview;
  final String releaseData;
  final String title;
  final double voteAverage;
  final int runTime;

  const MovieDetail({
    required this.backdropPath,
    required this.id,
    required this.overview,
    required this.releaseData,
    required this.title,
    required this.voteAverage,
    required this.genres,
    required this.runTime,
  });

  @override
  List<Object> get props => [
        backdropPath,
        id,
        overview,
        releaseData,
        title,
        voteAverage,
        genres,
        runTime,
      ];
}
