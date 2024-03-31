import 'package:flutter/material.dart';
import 'package:projects/components/widgets/CustomButton.dart';
import 'package:projects/components/widgets/comming_soon_dilaouge.dart';
import 'package:projects/components/widgets/custom_text.dart';
import 'package:projects/utils/images.dart';
import 'package:projects/utils/text.dart';

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
            CustomButtom(text: "Post data", onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const ComingSoonDialog(
                    title: "New Feature Alert!",
                    message: "Get ready for exciting new functionalities coming soon!",
                    backgroundColor: Colors.lightBlueAccent,
                    textColor: Colors.white,
                    icon: Icon(Icons.announcement, color: Colors.white),
                  );
                },
              );
            })
          ],
        ),
      ),
    );
  }
}
