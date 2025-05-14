part of 'package:flutter_flicksy/feature/home/presentation/detail/detail_page.dart';

class _Category extends StatelessWidget {
  const _Category({required this.categories});

  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: SizedBox(
        height: 32,
        child: ListView.separated(
          itemCount: categories.length,
          separatorBuilder: (context, index) => SizedBox(width: 10),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white),
              ),
              child: Text(
                categories[index],
                style: TextStyle(color: Colors.blue),
              ),
            );
          },
        ),
      ),
    );
  }
}
