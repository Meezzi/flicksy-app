import 'package:flutter_flicksy/feature/home/data/dtos/movie_detail_dto.dart';
import 'package:flutter_flicksy/feature/home/data/dtos/movie_response_dto.dart';

abstract interface class MovieService {
  Future<MovieResponseDto?> fetchNowPlayingMovies();

  Future<MovieResponseDto?> fetchPopularMovies();

  Future<MovieResponseDto?> fetchTopRatedMovies();

  Future<MovieResponseDto?> fetchUpcomingMovies();

  Future<MovieDetailDto?> fetchMovieDetail(int id);
}
