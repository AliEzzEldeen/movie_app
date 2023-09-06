class AppConstance{
  static const String apiKey = '3bda1efe1c5a63a5935c08ace42c3e5b';
  static const String baseURL = 'https://api.themoviedb.org/3/movie';
  static const String nowPlayingMoviesPath = "$baseURL/now_playing?api_key=$apiKey";
  static const String popularMoviesPath = "$baseURL/popular?api_key=$apiKey";
  static const String topRateMoviesPath = "$baseURL/top_rated?api_key=$apiKey";
  static const String baseImageUrl = 'https://image.tmdb.org/t/p/w500';

  static String imageUrl(String path) => '$baseImageUrl$path';
}