import 'package:flutter_flicksy/feature/home/domain/entities/movie.dart' show Movie;
import 'package:flutter_flicksy/feature/home/domain/repositories/movie_repository.dart';

class FetchMoviesPopularUsecase {
  FetchMoviesPopularUsecase(this._movieRepository);

  final MovieRepository _movieRepository;

  Future<List<Movie>?> execute() async {
    return await _movieRepository.fetchPopularMovies();
  }
}
