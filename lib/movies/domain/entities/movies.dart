class Movies {
  final int id;
  final String title;
  final String backdropPath;
  final List<int> genreIds;
  final String overview;
  final double voteAverage;
  final String releaseDate;

  Movies({
    required this.id,
    required this.title,
    required this.backdropPath,
    required this.genreIds,
    required this.overview,
    required this.voteAverage,
    required this.releaseDate,
  });

  List<Object> get props => [
        id,
        title,
        backdropPath,
        genreIds,
        overview,
        voteAverage,
        releaseDate,
      ];
}
