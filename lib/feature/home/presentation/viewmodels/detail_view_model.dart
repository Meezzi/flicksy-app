import 'package:flutter_flicksy/feature/home/domain/providers/usecase_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_flicksy/feature/home/domain/entities/movie_detail.dart';

class DetailViewModel extends FamilyAsyncNotifier<MovieDetail?, int> {
  @override
  Future<MovieDetail?> build(int id) async {
    final fetchMoviesUsecase = ref.read(fetchMoviesDetailUsecaseProvider);
    return await fetchMoviesUsecase.execute(id);
  }
}
