import 'package:flutter_flicksy/feature/home/domain/providers/usecase_providers.dart';
import 'package:flutter_flicksy/feature/home/presentation/viewmodels/home_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeViewModel extends AsyncNotifier<HomeState> {
  @override
  Future<HomeState> build() async {
    try {
      final nowPlaying =
          await ref.read(fetchMoviesNowPlayingUsecaseProvider).execute() ?? [];
      final popular =
          await ref.read(fetchMoviesPopularUsecaseProvider).execute() ?? [];
      final topRated =
          await ref.read(fetchMoviesTopRatedUsecaseProvider).execute() ?? [];
      final upcoming =
          await ref.read(fetchMoviesUpcomingUsecaseProvider).execute() ?? [];

      return HomeState(
        nowPlaying: nowPlaying,
        popular: popular,
        topRated: topRated,
        upcoming: upcoming,
      );
    } catch (e) {
      throw Exception('영화 데이터를 불러오는 데 실패했습니다');
    }
  }
}
