import 'package:flutter/material.dart';
part 'widgets/horizontal_movie_list.dart';
part 'widgets/label_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _LabelText(text: '가장 인기있는'),
              _MoviePoster(),

              _LabelText(text: '현재 상영중'),
              _HorizontalMovieList(),

              _LabelText(text: '인기순'),
              _PopularMovieList(),

              _LabelText(text: '평점 높은 순'),
              _HorizontalMovieList(),

              _LabelText(text: '개봉예정'),
              _HorizontalMovieList(),
            ],
          );
        },
      ),
    );
  }
}

class _MoviePoster extends StatelessWidget {
  const _MoviePoster();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(
            'https://picsum.photos/200/300',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
