import 'package:flutter_flicksy/feature/home/domain/entities/movie_detail.dart';
import 'package:flutter_flicksy/feature/home/presentation/viewmodels/detail_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final detailViewModelProvider =
    AsyncNotifierProvider.family<DetailViewModel, MovieDetail?, int>(
      () => DetailViewModel(),
    );
