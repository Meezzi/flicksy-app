import 'package:flutter/material.dart';
part 'widgets/box_office_information.dart';
part 'widgets/category.dart';
part 'widgets/movie_header.dart';
part 'widgets/movie_description.dart';
part 'widgets/movie_poster.dart';
part 'widgets/studio_label.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
            children: [
              _MoviePoster(),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _MovieHeader(
                      title: 'Moana 2',
                      releaseDate: '2024-11-27',
                      overview: 'The ocean is calling them back',
                      runningTime: '100분',
                    ),
                    Divider(),

                    _Category(),
                    Divider(),

                    _MovieDescription(text: 'description'),
                    Divider(),

                    _BoxOfficeInformation(),
                    _StudioLabel(),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
