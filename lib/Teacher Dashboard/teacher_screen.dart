import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:projects/utils/images.dart';

import '../components/Bise.dart';
import '../components/level.dart';
import '../components/search.dart';
import '../components/subject.dart';
import '../components/widgets/custom_text.dart';


class TeacherScreen extends StatefulWidget {
  const TeacherScreen({super.key});

  @override
  State<TeacherScreen> createState() => _TeacherScreenState();
}

class _TeacherScreenState extends State<TeacherScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController locationController = TextEditingController();
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 70,
          leading: Image.asset(AppImages.logoApp, width: 50, height: 50),
          elevation: 0,
          backgroundColor: Colors.blue,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.message))
          ],
        ),
        body: Container(
          height: double.infinity,
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage(AppImages.logoApp),
          //   ),
          // ),
          child: Column(
            children: [
              Container(
                height: 150.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.vertical(
                      bottom: const Radius.circular(20).r),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    children: [
                      SizedBox(height: 70.h),
                      search(
                        style: const TextStyle(color: Colors.black),
                        onChange: (p0) {
                          setState(() {});
                          return null;
                        },
                        controller: locationController,
                        prefixIcon:
                            const Icon(Icons.location_on, color: Colors.blue),
                        suffixIcon: locationController.text.isNotEmpty
                            ? InkWell(
                                child: const Icon(Icons.clear),
                                onTap: () {
                                  locationController.clear();
                                  setState(() {});
                                },
                              )
                            : InkWell(
                                child: const Icon(
                                  size: 30,
                                  Icons.arrow_drop_down,
                                  color: Colors.blue,
                                ),
                                onTap: () {},
                              ),

                        hintText: "Set your location",
                        // style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Container(
                        height: 300,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.grey.shade300)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 18.0, vertical: 10),
                              child: CustomText(
                                  text: "Browse",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            ),
                            const TabBar(
                              tabs: [
                                Tab(
                                  child: Text(
                                    // overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    'Material',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    // overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    'Time Scheduling',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    // overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    'Online Class',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: TabBarView(children: [
                                Subjects(
                                  icons: [AppImages.library, AppImages.content],
                                  list: const [
                                    'Tutor Library',
                                    'Content Generation'
                                  ],
                                ),
                                BiseGrade(
                                  icons: [AppImages.am10, AppImages.am12, AppImages.pm1,AppImages.pm2],
                                  listBoard: const [
                                    '10-11',
                                    '11-12',
                                    '12-01',
                                    '01-02'
                                  ],
                                ),
                                LevelWidgets(
                                  icons: [AppImages.onlineclass],
                                  containerHieght: 140,
                                  levels: const ['Create Online Class'],
                                )
                              ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
