import 'package:flutter/material.dart';
import 'package:flutter_flicksy/feature/home/core/constants/poster_base_url.dart';
import 'package:flutter_flicksy/feature/home/domain/entities/movie.dart';
import 'package:flutter_flicksy/feature/home/presentation/detail/detail_page.dart';
import 'package:flutter_flicksy/feature/home/presentation/providers/view_model_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
part 'widgets/horizontal_movie_list.dart';
part 'widgets/label_text.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final state = ref.watch(homeViewModelProvider);

    return state.when(
      loading: () => Center(child: CircularProgressIndicator()),
      error:
          (error, stackTrace) =>
              Row(children: [Icon(Icons.image_not_supported_outlined)]),
      data: (data) {
        return Scaffold(
          body: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _LabelText(text: '가장 인기있는'),
                  _MoviePoster(movie: data.popular.first),

                  _LabelText(text: '현재 상영중'),
                  _HorizontalMovieList(movieList: data.nowPlaying),

                  _LabelText(text: '인기순'),
                  _PopularMovieList(movieList: data.popular),

                  _LabelText(text: '평점 높은 순'),
                  _HorizontalMovieList(movieList: data.topRated),

                  _LabelText(text: '개봉예정'),
                  _HorizontalMovieList(movieList: data.upcoming),
                ],
              );
            },
          ),
        );
      },
    );
  }
}

class _MoviePoster extends StatelessWidget {
  const _MoviePoster({required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    final imageUrl = '$posterBaseUrl${movie.posterPath}';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: double.infinity,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailPage(id: movie.id)),
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(imageUrl, fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
