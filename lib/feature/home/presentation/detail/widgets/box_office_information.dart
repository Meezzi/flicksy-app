part of 'package:flutter_flicksy/feature/home/presentation/detail/detail_page.dart';

class _BoxOfficeInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Text(
            '흥행정보',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 70,
          child: ListView.separated(
            itemCount: 6,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => SizedBox(width: 10),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _BoxOfficeContent(title: '6.949', content: '평점'),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _BoxOfficeContent extends StatelessWidget {
  const _BoxOfficeContent({required this.title, required this.content});

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Column(children: [Text(content), Text(content)]);
  }
}
