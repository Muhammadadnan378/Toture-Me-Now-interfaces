// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:projects/utils/text.dart';
// import 'package:projects/widgets/custom_text.dart';
//
// class BrowsTutor extends StatefulWidget {
//   const BrowsTutor({Key? key}) : super(key: key);
//
//   @override
//   State<BrowsTutor> createState() => _BrowsTutorState();
// }
//
// class _BrowsTutorState extends State<BrowsTutor> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 18.0),
//           child: Container(
//             height: 350,
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(10),
//                 border: Border.all(color: Colors.grey.shade300)),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 CustomText(text: "Brows", style: kFirstTextStyle),
//                 TabBar(
//                   tabs: [
//                     Tab(
//                       child: Text(
//                         'Shops',
//                         style: TextStyle(),
//                       ),
//                     ),
//                     Tab(
//                       child: Text(
//                         'Saved Lists 1',
//                         style: TextStyle(),
//                       ),
//                     ),
//                     Tab(
//                       child: Text(
//                         'Saved Lists 2',
//                         style: TextStyle(),
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
