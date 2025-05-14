// UseCase
import 'package:flutter_flicksy/feature/home/data/providers/repository_providers.dart';
import 'package:flutter_flicksy/feature/home/domain/usecases/fetch_movies_detail_usecase.dart';
import 'package:flutter_flicksy/feature/home/domain/usecases/fetch_movies_now_playing_usecase.dart';
import 'package:flutter_flicksy/feature/home/domain/usecases/fetch_movies_popular_usecase.dart';
import 'package:flutter_flicksy/feature/home/domain/usecases/fetch_movies_top_rated_usecase.dart';
import 'package:flutter_flicksy/feature/home/domain/usecases/fetch_movies_upcoming_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Detail
final fetchMoviesDetailUsecaseProvider = Provider((ref) {
  final repository = ref.read(remoteMovieRepositoryProvider);
  return FetchMoviesDetailUsecase(repository);
});

// NowPlaying
final fetchMoviesNowPlayingUsecaseProvider = Provider((ref) {
  final repository = ref.read(remoteMovieRepositoryProvider);
  return FetchMoviesNowPlayingUsecase(repository);
});

// Popular
final fetchMoviesPopularUsecaseProvider = Provider((ref) {
  final repository = ref.read(remoteMovieRepositoryProvider);
  return FetchMoviesPopularUsecase(repository);
});

// TopRated
final fetchMoviesTopRatedUsecaseProvider = Provider((ref) {
  final repository = ref.read(remoteMovieRepositoryProvider);
  return FetchMoviesTopRatedUsecase(repository);
});

// Upcoming
final fetchMoviesUpcomingUsecaseProvider = Provider((ref) {
  final repository = ref.read(remoteMovieRepositoryProvider);
  return FetchMoviesUpcomingUsecase(repository);
});
