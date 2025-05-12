part of 'package:flutter_flicksy/feature/home/presentation/detail/detail_page.dart';

class _MovieDescription extends StatelessWidget {
  const _MovieDescription({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}