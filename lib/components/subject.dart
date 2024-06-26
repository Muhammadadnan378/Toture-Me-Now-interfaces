import 'package:flutter/material.dart';
import 'package:projects/components/widgets/comming_soon_dilaouge.dart';
import 'package:projects/components/widgets/custom_text.dart';
import 'package:projects/utils/text.dart';

class Subjects extends StatelessWidget {
  List? list = [];
  List<String?> icons;
  Subjects({super.key, this.list, required this.icons});

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

              // Navigator.push(context, MaterialPageRoute(builder: (context) => const ComingSoonDialog(),));
            },
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(color: Colors.blue, spreadRadius: 3, blurRadius: 2)
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(icons[index]!, width: 45, height: 45,),
                  CustomText(
                    text: list?[index],
                    style: kFormTextStyle,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
