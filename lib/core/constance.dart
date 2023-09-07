class AppConstance {
  static const String apiKey = '3bda1efe1c5a63a5935c08ace42c3e5b';
  static const String baseUrl = 'https://api.themoviedb.org/3/movie';
  static const String nowPlayingMoviesPath =
      "$baseUrl/now_playing?api_key=$apiKey";
  static const String popularMoviesPath = "$baseUrl/popular?api_key=$apiKey";
  static const String topRateMoviesPath = "$baseUrl/top_rated?api_key=$apiKey";

  static String movieDetailsPath(int movieId) =>
      "$baseUrl/$movieId?api_key=$apiKey";

  static String recommendationMoviesPath(int movieId) =>
      "$baseUrl/$movieId/recommendations?api_key=$apiKey";
  static const String baseImageUrl = 'https://image.tmdb.org/t/p/w500';

  static String imageUrl(String path) => '$baseImageUrl$path';
}
