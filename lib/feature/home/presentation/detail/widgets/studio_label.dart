part of 'package:flutter_flicksy/feature/home/presentation/detail/detail_page.dart';

class _StudioLabel extends StatelessWidget {
  const _StudioLabel({required this.logos});

  final List<String> logos;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
        height: 80,

        child: ListView.separated(
          itemCount: logos.length,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => SizedBox(width: 10),
          itemBuilder: (context, index) {
            return Image.network(
              '$posterBaseUrl${logos[index]}',
              fit: BoxFit.cover,
              errorBuilder:
                  (context, error, stackTrace) =>
                      Icon(Icons.image_not_supported_outlined),
            );
          },
        ),
      ),
    );
  }
}
