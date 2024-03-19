import 'package:flutter/material.dart';
import 'package:projects/screens/find_tutor_screen/widget/widget_container.dart';
import 'package:projects/screens/home/home_sceen.dart';

class FindTutorScreen extends StatefulWidget {
  const FindTutorScreen({super.key});

  @override
  State<FindTutorScreen> createState() => _FindTutorScreenState();
}

class _FindTutorScreenState extends State<FindTutorScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppBar(
              leading: const Icon(Icons.arrow_back_ios_new_sharp, size: 20),
              title:
                  const Text('Filter Tutors', style: TextStyle(fontSize: 20)),
            ),
            FilterTuterWidget(
                icon: Icons.summarize_outlined,
                title: 'Tuition Type',
                container1: 'Online',
                container2: 'Offline'),
            Divider(color: Colors.blue[200]),
            ListTile(
              leading: const Icon(Icons.location_on_outlined),
              title: const Text('City',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              subtitle: const Text(
                'All Cities',
                style: TextStyle(color: Colors.blue),
              ),
              trailing: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ));
                },
                icon: const Icon(Icons.arrow_forward_ios_sharp),
              ),
            ),
            Divider(color: Colors.blue[200]),
            FilterTuterWidget(
                icon: Icons.wordpress,
                title: 'Tutor Gender',
                container1: 'Male',
                container2: 'Female'),
            Divider(color: Colors.blue[200]),
            FilterTuterWidget(
                icon: Icons.icecream,
                title: 'Tuition Language',
                container1: 'Urdu',
                container2: 'English'),
            const Divider(),
            FilterTuterWidget(
                icon: Icons.stay_current_landscape,
                title: 'Syllabus',
                container1: 'BISE',
                container2: 'Cambridge'),
            const SizedBox(height: 10),
            Divider(color: Colors.blue[200]),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(left: 20),
              // height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.add),
                      SizedBox(width: 5),
                      Text(
                        'Subjects (select maximum three of any)',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .25,
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            decoration: BoxDecoration(
                                color: Colors.blue[200],
                                borderRadius: BorderRadius.circular(30)),
                            child: const Text('Maths'),
                          ),
                          const SizedBox(width: 2),
                          Container(
                            width: MediaQuery.of(context).size.width * .30,
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            decoration: BoxDecoration(
                                color: Colors.blue[200],
                                borderRadius: BorderRadius.circular(30)),
                            child: const Text('Science'),
                          ),
                          const SizedBox(width: 2),
                          Container(
                            width: MediaQuery.of(context).size.width * .35,
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            decoration: BoxDecoration(
                                color: Colors.blue[200],
                                borderRadius: BorderRadius.circular(30)),
                            child: const Text('Holly Quran'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .30,
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            decoration: BoxDecoration(
                                color: Colors.blue[200],
                                borderRadius: BorderRadius.circular(30)),
                            child: const Text('English'),
                          ),
                          const SizedBox(width: 2),
                          Container(
                            width: MediaQuery.of(context).size.width * .45,
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            decoration: BoxDecoration(
                                color: Colors.blue[200],
                                borderRadius: BorderRadius.circular(30)),
                            child: const Text('Computer Science'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .70,
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            decoration: BoxDecoration(
                                color: Colors.blue[200],
                                borderRadius: BorderRadius.circular(30)),
                            child: const Text('all Science, Arts and Islamic'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .70,
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            decoration: BoxDecoration(
                                color: Colors.blue[200],
                                borderRadius: BorderRadius.circular(30)),
                            child: const Text('Arts and others'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Divider(color: Colors.blue[200]),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(left: 20),
              // height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.add),
                      SizedBox(width: 5),
                      Text(
                        'Grade Levels (select maximum two of any)',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            // width: MediaQuery
                            //     .of(context)
                            //     .size
                            //     .width,
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            decoration: BoxDecoration(
                                color: Colors.blue[200],
                                borderRadius: BorderRadius.circular(30)),
                            child: const Text('Kindergarten/Play Group'),
                          ),
                          const SizedBox(width: 2),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .43,
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            decoration: BoxDecoration(
                                color: Colors.blue[200],
                                borderRadius: BorderRadius.circular(30)),
                            child: const Text('Primary (1st-5th)'),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: MediaQuery.of(context).size.width * .40,
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            decoration: BoxDecoration(
                                color: Colors.blue[200],
                                borderRadius: BorderRadius.circular(30)),
                            child: const Text('Middle (6th-8th)'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .40,
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            decoration: BoxDecoration(
                                color: Colors.blue[200],
                                borderRadius: BorderRadius.circular(30)),
                            child: const Text('High (9th-10th)'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .55,
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            decoration: BoxDecoration(
                                color: Colors.blue[200],
                                borderRadius: BorderRadius.circular(30)),
                            child: const Text('Intermediate (11th-12th)'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .50,
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            decoration: BoxDecoration(
                                color: Colors.blue[200],
                                borderRadius: BorderRadius.circular(30)),
                            child: const Text('All Grades (1st-12th)'),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: MediaQuery.of(context).size.width * .33,
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            decoration: BoxDecoration(
                                color: Colors.blue[200],
                                borderRadius: BorderRadius.circular(30)),
                            child: const Text('O-Level'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .30,
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            decoration: BoxDecoration(
                                color: Colors.blue[200],
                                borderRadius: BorderRadius.circular(30)),
                            child: const Text('A-Level'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            const Divider(),
            FilterTuterWidget(
                icon: Icons.stay_current_landscape,
                title: 'Syllabus',
                container1: 'BISE',
                container2: 'Cambridge'),
            Divider(color: Colors.blue[200]),
            Container(
              margin: const EdgeInsets.only(left: 20),
              // height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.money),
                      SizedBox(width: 30),
                      Text(
                        'Fees Range',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        // padding: ,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        // height: 40,
                        width: MediaQuery.of(context).size.width * .40,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue, // Change color as needed
                              width: 3.0, // Adjust border width
                            ),
                            // border: ,
                            borderRadius: BorderRadius.circular(5)),
                        child: TextFormField(
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: '0',
                              hintStyle: TextStyle(color: Colors.blue),
                              hoverColor: Colors.blue,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 5)),
                        ),
                      ),
                      const Text(
                        'TO',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Container(
                        alignment: Alignment.center,
                        // padding: ,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        // height: 40,
                        width: MediaQuery.of(context).size.width * .40,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue, // Change color as needed
                              width: 3.0, // Adjust border width
                            ),
                            // border: ,
                            borderRadius: BorderRadius.circular(5)),
                        child: TextFormField(
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Any',
                              hintStyle: TextStyle(color: Colors.blue),
                              hoverColor: Colors.blue,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 5)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Divider(color: Colors.blue[200]),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width * .30,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue, // Change color as needed
                          width: 1.0, // Adjust border width
                        ),
                        // border: ,
                        borderRadius: BorderRadius.circular(5)),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Reset',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width * .60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5)),
                    child: TextButton(
                        child: const Text(
                          'Apply',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {}),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}
