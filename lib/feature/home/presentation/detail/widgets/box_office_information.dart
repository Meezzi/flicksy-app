part of 'package:flutter_flicksy/feature/home/presentation/detail/detail_page.dart';

class _BoxOfficeInformation extends StatelessWidget {
  const _BoxOfficeInformation({required this.detail});
  final MovieDetail detail;

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
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _BoxOfficeContent(
                title: '평점',
                content: detail.voteAverage.toString(),
              ),

              SizedBox(width: 16),

              _BoxOfficeContent(
                title: '평점투표수',
                content: detail.voteCount.toString(),
              ),
              
              SizedBox(width: 16),

              _BoxOfficeContent(
                title: '인기점수',
                content: detail.popularity.toString(),
              ),
              
              SizedBox(width: 16),

              _BoxOfficeContent(
                title: '예산',
                content: '\$${detail.budget.toString()}',
              ),
              
              SizedBox(width: 16),
              
              _BoxOfficeContent(
                title: '수익',
                content: '\$${detail.revenue.toString()}',
              ),
            ],
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
            Column(children: [Text(content), Text(title)]),
          ],
        ),
      ),
    );
  }
}
