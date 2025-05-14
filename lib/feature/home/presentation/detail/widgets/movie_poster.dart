part of 'package:flutter_flicksy/feature/home/presentation/detail/detail_page.dart';

class _MoviePoster extends StatelessWidget {
  const _MoviePoster({required this.tag, required this.poster});

  final String tag;
  final String poster;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.network(
          poster,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
