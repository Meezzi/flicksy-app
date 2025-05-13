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
}
