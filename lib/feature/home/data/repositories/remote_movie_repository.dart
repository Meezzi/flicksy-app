import 'package:flutter_flicksy/feature/home/data/services/remote_movie_service.dart';
import 'package:flutter_flicksy/feature/home/domain/entities/movie.dart';
import 'package:flutter_flicksy/feature/home/domain/entities/movie_detail.dart';
import 'package:flutter_flicksy/feature/home/domain/repositories/movie_repository.dart';

class RemoteMovieRepository implements MovieRepository {
  RemoteMovieRepository(this._service);

  final RemoteMovieService _service;

  @override
  Future<MovieDetail?> fetchMovieDetail(int id) async {
    final result = await _service.fetchMovieDetail(id);

    return MovieDetail(
      budget: result!.budget,
      genres: result.genres.map((e) => e.name).toList(),
      id: id,
      productionCompanyLogos:
          result.productionCompanies.map((e) => e.name).toList(),
      overview: result.overview,
      popularity: result.popularity,
      releaseDate: DateTime.tryParse(result.releaseDate) ?? DateTime(1900),
      revenue: result.revenue,
      runtime: result.runtime,
      tagline: result.tagline,
      title: result.title,
      voteAverage: result.voteAverage,
      voteCount: result.voteCount,
    );
  }

  @override
  Future<List<Movie>?> fetchNowPlayingMovies() async {
    final result = await _service.fetchNowPlayingMovies();
    return result?.results
        .map((e) => Movie(id: e.id, posterPath: e.posterPath))
        .toList();
  }

  @override
  Future<List<Movie>?> fetchPopularMovies() async {
    final result = await _service.fetchPopularMovies();
    return result?.results
        .map((e) => Movie(id: e.id, posterPath: e.posterPath))
        .toList();
  }

  @override
  Future<List<Movie>?> fetchTopRatedMovies() async {
    final result = await _service.fetchTopRatedMovies();
    return result?.results
        .map((e) => Movie(id: e.id, posterPath: e.posterPath))
        .toList();
  }
}
