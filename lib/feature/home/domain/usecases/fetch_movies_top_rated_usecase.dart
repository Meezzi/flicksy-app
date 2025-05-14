import 'package:flutter_flicksy/feature/home/domain/entities/movie.dart';
import 'package:flutter_flicksy/feature/home/domain/repositories/movie_repository.dart';

class FetchMoviesTopRatedUsecase {
  FetchMoviesTopRatedUsecase(this._movieRepository);

  final MovieRepository _movieRepository;

  Future<List<Movie>?> execute() async {
    return await _movieRepository.fetchTopRatedMovies();
  }
}
