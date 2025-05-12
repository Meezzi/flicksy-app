part of 'package:flutter_flicksy/feature/home/presentation/detail/detail_page.dart';

class _StudioLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
        height: 80,
        
        child: ListView.separated(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => SizedBox(width: 10),
          itemBuilder: (context, index) {
            return Image.network('https://picsum.photos/200/300', fit: BoxFit.cover,);
          },
        ),
      ),
    );
  }
}
