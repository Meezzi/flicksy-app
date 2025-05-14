import 'package:flutter_flicksy/feature/home/domain/entities/movie_detail.dart';
import 'package:flutter_flicksy/feature/home/domain/repositories/movie_repository.dart';

class FetchMoviesDetailUsecase {
  FetchMoviesDetailUsecase(this._movieRepository);

  final MovieRepository _movieRepository;

  Future<MovieDetail?> execute(int id) async {
    return await _movieRepository.fetchMovieDetail(id);
  }
}
