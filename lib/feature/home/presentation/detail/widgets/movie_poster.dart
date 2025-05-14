part of 'package:flutter_flicksy/feature/home/presentation/detail/detail_page.dart';

class _MoviePoster extends StatelessWidget {
  const _MoviePoster({required this.posterPath});

  final String posterPath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Image.network('$posterBaseUrl$posterPath', fit: BoxFit.cover),
    );
  }
}
