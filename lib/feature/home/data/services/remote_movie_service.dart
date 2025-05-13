import 'package:dio/dio.dart';
import 'package:flutter_flicksy/feature/home/data/dtos/movie_detail_dto.dart';
import 'package:flutter_flicksy/feature/home/data/dtos/movie_response_dto.dart';
import 'package:flutter_flicksy/feature/home/data/services/movie_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RemoteMovieService implements MovieService {
  final Dio dio;

  RemoteMovieService({required this.dio});

  @override
  Future<MovieDetailDto?> fetchMovieDetail(int id) async {
    final response = await dio.get('/$id', queryParameters: {'language': 'ko'});
    return MovieDetailDto.fromJson(response.data);
  }

  @override
  Future<MovieResponseDto?> fetchNowPlayingMovies() async {
    final response = await dio.get(
      '/now_playing',
      queryParameters: {'language': 'ko'},
    );

    return MovieResponseDto.fromJson(response.data);
  }

  @override
  Future<MovieResponseDto?> fetchPopularMovies() async {
    final response = await dio.get(
      '/popular',
      queryParameters: {'language': 'ko'},
    );

    return MovieResponseDto.fromJson(response.data);
  }

  @override
  Future<MovieResponseDto?> fetchTopRatedMovies() async {
    final response = await dio.get(
      '/top_rated',
      queryParameters: {'language': 'ko'},
    );

    return MovieResponseDto.fromJson(response.data);
  }

  @override
  Future<MovieResponseDto?> fetchUpcomingMovies() async {
    final response = await dio.get(
      '/upcoming',
      queryParameters: {'language': 'ko'},
    );

    return MovieResponseDto.fromJson(response.data);
  }
}
