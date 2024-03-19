
import 'package:flutter/material.dart';
import 'package:projects/utils/text.dart';

import 'custom_text.dart';


class CustomButtom extends StatelessWidget {
  final String text;
  final void Function() onTap;
  const CustomButtom({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 46,

          width: double.infinity,
          decoration: BoxDecoration(
            color:  Colors.blue.shade300,
            borderRadius: BorderRadius.circular(30),

          ),
          child: Center(
            child: CustomText(text: text,style: kSecondTextStyle,)
          ),
        ),
      ),
    );
  }
}