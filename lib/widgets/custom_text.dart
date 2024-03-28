import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle style;
  const CustomText({super.key, required this.text, required this.style});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      text,
      // overflow: TextOverflow.ellipsis,
      style: style,
    );
  }
}
