import 'package:flutter/material.dart';
import 'package:projects/utils/text.dart';
import 'package:projects/widgets/custom_text.dart';

class LevelWidgets extends StatelessWidget {
  List? levels = [];
  LevelWidgets({super.key, this.levels});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: levels?.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 0,
          mainAxisExtent: 120,
          mainAxisSpacing: 12),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      spreadRadius: 3,
                      blurRadius: 6)
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.ac_unit_outlined,
                  size: 50,
                  color: Colors.blue,
                ),
                CustomText(text: levels?[index], style: kFormTextStyle)
              ],
            ),
          ),
        );
      },
    );
  }
}
