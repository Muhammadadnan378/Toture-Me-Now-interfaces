import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:projects/utils/images.dart';

import '../../components/Bise.dart';
import '../../components/level.dart';
import '../../components/looking_container.dart';
import '../../components/search.dart';
import '../../components/subject.dart';
import '../../components/widgets/comming_soon_dilaouge.dart';
import '../../components/widgets/custom_text.dart';
import '../../utils/text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> listOfRecommendedTutors = [
    'Sir Sharoom',
    'Sir Ihtisham',
    'Sir Tauheed',
    'Sir Waqas',
    'Sir Shams',
    'Sir Sohail',
    'Sir Kamal'
  ];
  TextEditingController locationController = TextEditingController();
  final PageController _pageController = PageController();
  int _currentPage = 0;
  @override
  void initState() {
    super.initState();
    Timer.periodic(
      const Duration(seconds: 3),
      (timer) {
        if (_currentPage < listOfRecommendedTutors.length - 1) {
          _currentPage++;
        } else {
          _currentPage = 0;
        }
        _pageController.animateToPage(_currentPage,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
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
                    Padding(
                      padding: const EdgeInsets.symmetric(
                              horizontal: 18.0, vertical: 10)
                          .w,
                      child: Container(
                        height: 50.h,
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: TextFormField(
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.symmetric(vertical: 13),
                                alignLabelWithHint: true,
                                suffixIcon: const Icon(Icons.search,
                                    color: Colors.blue),
                                hintText: "Search a tutor",
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.blue,
                                  fontSize: 14.sp,
                                ),
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Container(
                        height: 370,
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
                              labelColor: Colors.black,
                              indicatorColor: Colors.black,
                              tabs: [
                                Tab(
                                  child: Text(
                                    'Subjects',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    'BISE Grade',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    'O/A Level',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: TabBarView(children: [
                                Subjects(
                                  icons: [AppImages.maths, AppImages.science, AppImages.physics, AppImages.chemistry, AppImages.computer, AppImages.biology, AppImages.islamicstudy],
                                  list: const [
                                    'Maths',
                                    'Science',
                                    'Physics',
                                    'Chemistry',
                                    'Computer Sciences',
                                    'Biology',
                                    'Islamic Studies'
                                  ],
                                ),
                                BiseGrade(
                                  icons: [AppImages.bisem, AppImages.bisep, AppImages.biser, AppImages.bisel, AppImages.bisef, AppImages.bisek, AppImages.bisepp],
                                  listBoard: const [
                                    'BISE Mardan',
                                    'BISE Peshawar',
                                    'BISE Islamabad',
                                    'BISE Lahore',
                                    'BISE Faisalabad',
                                    'BISE Karachi',
                                    'BISE Punjab'
                                  ],
                                ),
                                LevelWidgets(
                                  icons: [AppImages.preschool, AppImages.alevel, AppImages.gradef, AppImages.middel, AppImages.matric],
                                  levels: const [
                                    'Preschool',
                                    'Grade 1-5',
                                    'Grade 6-8',
                                    'O-Level',
                                    'A-Level',
                                  ],
                                )
                              ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 20),
                      alignment: Alignment.center,
                      // color: Colors.grey,
                      width: double.infinity,
                      child: Card(
                        elevation: 5,
                        child: Column(
                          children: [
                            Text('Recommended Tutors', style: kFirstTextStyle),
                            GestureDetector(
                              onTap: (){
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return const ComingSoonDialog(
                                      title: "New Feature Alert!",
                                      message: "Get ready for exciting new functionalities coming soon!",
                                      backgroundColor: Colors.lightBlueAccent,
                                      textColor: Colors.white,
                                      icon: Icon(Icons.info, color: Colors.white),
                                    );
                                  },
                                );
                              },
                              child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 5),
                                  // color: Colors.grey,
                                  width: double.infinity,
                                  alignment: Alignment.centerRight,
                                  height: 40,
                                  child: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.blue)
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const LookingContainer(),
                    const SizedBox(height: 30),
                    const LookingContainer()
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
