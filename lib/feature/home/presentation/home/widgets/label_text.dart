part of 'package:flutter_flicksy/feature/home/presentation/home/home_page.dart';

class _LabelText extends StatelessWidget {
  final String text;

  const _LabelText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Text(text, style: TextStyle(fontSize: 20)),
    );
  }
}
