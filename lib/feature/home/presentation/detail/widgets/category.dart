part of 'package:flutter_flicksy/feature/home/presentation/detail/detail_page.dart';

class _Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: SizedBox(
        height: 32,
        child: ListView.separated(
          itemCount: 10,
          separatorBuilder: (context, index) => SizedBox(width: 10),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white),
              ),
              child: Text('Animation', style: TextStyle(color: Colors.blue)),
            );
          },
        ),
      ),
    );
  }
}
