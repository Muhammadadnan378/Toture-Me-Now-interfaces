import 'package:flutter/material.dart';
import 'package:projects/utils/images.dart';
import 'package:projects/utils/text.dart';
import 'package:projects/widgets/CustomButton.dart';
import 'package:projects/widgets/custom_text.dart';

class LookingContainer extends StatelessWidget {
  const LookingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.blue[400],
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.purpleAccent)),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  AppImages.logoApp,
                  height: 100,
                  width: 100,
                ),
                CustomText(
                    text: "Looking For job Tutor ", style: kFirstTextStyle),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButtom(text: "Post data", onTap: () {})
          ],
        ),
      ),
    );
  }
}
