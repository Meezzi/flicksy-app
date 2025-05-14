part of 'package:flutter_flicksy/feature/home/presentation/home/home_page.dart';

class _HorizontalMovieList extends StatelessWidget {
  const _HorizontalMovieList({required this.movieList});

  final List<Movie> movieList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 180,
          child: ListView.separated(
            padding: EdgeInsets.only(left: 20),
            itemCount: 20,
            separatorBuilder: (context, index) => SizedBox(width: 12),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  '$posterBaseUrl${movieList[index].posterPath}',
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _PopularMovieList extends StatelessWidget {
  const _PopularMovieList({required this.movieList});

  final List<Movie> movieList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 180,
          child: ListView.separated(
            itemCount: 20,
            separatorBuilder: (context, index) => SizedBox(width: 12),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 32),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network('$posterBaseUrl${movieList[index].posterPath}'),
                    ),
                  ),

                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Text(
                      (index + 1).toString(),
                      style: TextStyle(
                        height: 1,
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
