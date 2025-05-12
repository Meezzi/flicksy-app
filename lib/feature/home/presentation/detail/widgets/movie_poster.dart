part of 'package:flutter_flicksy/feature/home/presentation/detail/detail_page.dart';

class _MoviePoster extends StatelessWidget {
  const _MoviePoster();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Image.network('https://picsum.photos/200/300', fit: BoxFit.cover),
    );
  }
}