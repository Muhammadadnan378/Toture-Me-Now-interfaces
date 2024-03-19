import 'package:flutter/material.dart';
import 'package:projects/utils/text.dart';
import 'package:projects/widgets/custom_text.dart';

class Subjects extends StatelessWidget {
  List? list = [];
  Subjects({super.key, this.list});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: list?.length,
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
                boxShadow: const [
                  BoxShadow(color: Colors.blue, spreadRadius: 3, blurRadius: 2)
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.male,
                  color: Colors.blue,
                  size: 50,
                ),
                CustomText(
                  text: list?[index],
                  style: kFormTextStyle,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
