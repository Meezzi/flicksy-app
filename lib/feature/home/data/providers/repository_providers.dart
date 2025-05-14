// Service
import 'package:dio/dio.dart';
import 'package:flutter_flicksy/feature/home/data/services/remote_movie_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Service
final _remoteMovieServiceProvider = Provider<RemoteMovieService>((ref) {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.themoviedb.org/3/movie'));

  return RemoteMovieService(dio: dio);
});
