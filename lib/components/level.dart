import 'package:flutter/material.dart';
import 'package:projects/components/widgets/comming_soon_dilaouge.dart';
import 'package:projects/components/widgets/custom_text.dart';
import 'package:projects/utils/text.dart';

class LevelWidgets extends StatelessWidget {
  List? levels = [];
  List<String?> icons;
  double? containerHieght;
  LevelWidgets({super.key, this.levels, this.containerHieght, required this.icons});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: levels?.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 0,
          mainAxisExtent: containerHieght ?? 120,
          // childAspectRatio: 20,
          mainAxisSpacing: 12
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: (){
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
            },
            child: Container(
              // height: ,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
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
                  Image.asset(icons[index]!, width: 45, height: 45,),
                  CustomText(text: levels?[index], style: kFormTextStyle)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
