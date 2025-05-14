import 'package:flutter_flicksy/feature/home/domain/entities/movie.dart';

class HomeState {
  final List<Movie> nowPlaying;
  final List<Movie> popular;
  final List<Movie> topRated;
  final List<Movie> upcoming;

  const HomeState({
    this.nowPlaying = const [],
    this.popular = const [],
    this.topRated = const [],
    this.upcoming = const [],
  });
}
