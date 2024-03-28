import 'package:flutter/material.dart';
import 'package:projects/utils/text.dart';
import 'package:projects/widgets/custom_text.dart';

class BiseGrade extends StatelessWidget {
  List? listBoard = [];
  List<String?> icons;
  BiseGrade({super.key, this.listBoard, required this.icons});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: listBoard?.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 0,
          mainAxisExtent: 120,
          mainAxisSpacing: 12),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      spreadRadius: 3,
                      blurRadius: 6)
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                 Image.asset(icons[index]!, width: 45, height: 45,),
                CustomText(text: listBoard?[index], style: kFormTextStyle)
              ],
            ),
          ),
        );
      },
    );
  }
}
