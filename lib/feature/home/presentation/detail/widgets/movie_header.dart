part of 'package:flutter_flicksy/feature/home/presentation/detail/detail_page.dart';

class _MovieHeader extends StatelessWidget {
  const _MovieHeader({
    required this.title,
    required this.releaseDate,
    required this.overview,
    required this.runningTime,
  });

  final String title;
  final String releaseDate;
  final String overview;
  final String runningTime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Text(overview),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text(runningTime), Text(releaseDate)],
          ),
        ],
      ),
    );
  }
}
