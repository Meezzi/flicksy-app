// 뷰모델 프로바이더
import 'package:flutter_flicksy/feature/home/presentation/viewmodels/home_state.dart';
import 'package:flutter_flicksy/feature/home/presentation/viewmodels/home_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeViewModelProvider = AsyncNotifierProvider<HomeViewModel, HomeState>(
  () => HomeViewModel(),
);
