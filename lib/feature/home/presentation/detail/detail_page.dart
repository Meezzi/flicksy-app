import 'package:flutter/material.dart';
import 'package:flutter_flicksy/feature/home/core/constants/poster_base_url.dart';
import 'package:flutter_flicksy/feature/home/domain/entities/movie_detail.dart';
import 'package:flutter_flicksy/feature/home/presentation/providers/detail_view_model_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
part 'widgets/box_office_information.dart';
part 'widgets/category.dart';
part 'widgets/movie_header.dart';
part 'widgets/movie_description.dart';
part 'widgets/movie_poster.dart';
part 'widgets/studio_label.dart';

class DetailPage extends ConsumerWidget {
  const DetailPage({
    super.key,
    required this.tag,
    required this.id,
    required this.poster,
  });

  final String tag;
  final int id;
  final String poster;

  @override
  Widget build(BuildContext context, ref) {
    final state = ref.watch(detailViewModelProvider(id));

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _MoviePoster(tag: tag, poster: poster),
            state.when(
              loading: () => Center(child: CircularProgressIndicator()),
              error:
                  (error, stackTrace) => Center(child: Text(error.toString())),
              data: (data) {
                return Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _MovieHeader(
                            title: data!.title,
                            releaseDate:
                                '${data.releaseDate.year}-${data.releaseDate.month.toString().padLeft(2, '0')}-${data.releaseDate.day.toString().padLeft(2, '0')}',
                            overview: data.tagline,
                            runningTime: '${data.runtime.toString()}분',
                          ),
                          Divider(),

                          _Category(categories: data.genres),
                          Divider(),

                          _MovieDescription(text: data.overview),
                          Divider(),

                          _BoxOfficeInformation(detail: data),
                          _StudioLabel(logos: data.productionCompanyLogos),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
