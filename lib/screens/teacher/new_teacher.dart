// Import necessary libraries
import 'package:flutter/material.dart';
import 'package:projects/screens/teacher/teacher_screen.dart';
import 'package:projects/screens/teacher/techer_profile/profile_screen.dart';

class MyTeacherPage extends StatefulWidget {
  @override
  State<MyTeacherPage> createState() => _MyTeacherPageState();
}

class _MyTeacherPageState extends State<MyTeacherPage> {
  int _selectedIndex = 0; // Index for bottom navigation bar

  final List<Widget> _screens = [
    const TeacherScreen(), // Replace with your HomeScreen widget
    // const FindTutorScreen(), // Replace with your FindTutorScreen widget
    const TeacherProfileScreen(), // Replace with your ProfileScreen widget
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // if (index == 2) {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[_selectedIndex],
        // Display selected screen
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: _selectedIndex == 2 // Show button only on Profile
            ? FloatingActionButton(
                backgroundColor: Colors.blue,
                child: const Icon(Icons.search, color: Colors.white),
                onPressed: () {})
            // : _selectedIndex == 0
            //     ? FloatingActionButton(
            //         backgroundColor: Colors.blue,
            //         child: const Icon(Icons.search, color: Colors.white),
            //         onPressed: () {})
            : null,

        // (_selectedIndex == 0 && _selectedIndex == 2)
        //     ?
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        )
        // : null,
        );
  }
}

// class FindTutorScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         leading: const Icon(Icons.arrow_back_ios_new_rounded),
//         title: const Text(
//           'Filter Tutor',
//           style: TextStyle(
//               fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Divider(),
//             FilterTuterWidget(
//                 icon: Icons.summarize_outlined,
//                 title: 'Tuition Type',
//                 container1: 'Online',
//                 container2: 'Offline'),
//             Divider(),
//             ListTile(
//               leading: Icon(Icons.location_on_outlined),
//               title: Text('City'),
//               subtitle: Text(
//                 'All Cities',
//                 style: TextStyle(color: Colors.blue),
//               ),
//               trailing: IconButton(
//                 onPressed: () {},
//                 icon: const Icon(Icons.arrow_forward_ios_sharp),
//               ),
//             ),
//             Divider(),
//             FilterTuterWidget(
//                 icon: Icons.wordpress,
//                 title: 'Tutor Gender',
//                 container1: 'Male',
//                 container2: 'Female'),
//             Divider(),
//             FilterTuterWidget(
//                 icon: Icons.icecream,
//                 title: 'Tuition Language',
//                 container1: 'Urdu',
//                 container2: 'English'),
//             Divider(),
//             FilterTuterWidget(
//                 icon: Icons.stay_current_landscape,
//                 title: 'Syllabus',
//                 container1: 'BISE',
//                 container2: 'Cambridge'),
//             Divider(),
//
//             Container(
//               margin: const EdgeInsets.only(left: 20),
//               height: 80,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Row(
//                     children: [
//                       Icon(Icons.add),
//                       const SizedBox(width: 30),
//                       Text(
//                         'widget.title',
//                         style: const TextStyle(
//                             fontSize: 15,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.blue),
//                       )
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Container(
//                         padding: const EdgeInsets.symmetric(
//                             vertical: 5, horizontal: 20),
//                         decoration: BoxDecoration(
//                             color: Colors.grey,
//                             borderRadius: BorderRadius.circular(30)),
//                         child: Text('Maths'),
//                       ),
//                       const SizedBox(width: 30),
//                       Container(
//                         padding:
//                             EdgeInsets.symmetric(vertical: 5, horizontal: 20),
//                         decoration: BoxDecoration(
//                             color: Colors.grey,
//                             borderRadius: BorderRadius.circular(30)),
//                         child: Text('Science'),
//                       )
//                     ],
//                   ),
//                   SizedBox(height: 10),
//                   Row(
//                     children: [
//                       Container(
//                         padding: const EdgeInsets.symmetric(
//                             vertical: 5, horizontal: 20),
//                         decoration: BoxDecoration(
//                             color: Colors.grey,
//                             borderRadius: BorderRadius.circular(30)),
//                         child: Text('Maths'),
//                       ),
//                       const SizedBox(width: 30),
//                       Container(
//                         padding:
//                             EdgeInsets.symmetric(vertical: 5, horizontal: 20),
//                         decoration: BoxDecoration(
//                             color: Colors.grey,
//                             borderRadius: BorderRadius.circular(30)),
//                         child: const Text('Science'),
//                       )
//                     ],
//                   ),
//                   const SizedBox(height: 10),
//                   Row(
//                     children: [
//                       Container(
//                         padding: const EdgeInsets.symmetric(
//                             vertical: 5, horizontal: 20),
//                         decoration: BoxDecoration(
//                             color: Colors.grey,
//                             borderRadius: BorderRadius.circular(30)),
//                         child: Text('Maths'),
//                       ),
//                       const SizedBox(width: 30),
//                       Container(
//                         padding:
//                             EdgeInsets.symmetric(vertical: 5, horizontal: 20),
//                         decoration: BoxDecoration(
//                             color: Colors.grey,
//                             borderRadius: BorderRadius.circular(30)),
//                         child: Text('Science'),
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             // FilterMulltipleWidget(
//             //     icon: Icons.add,
//             //     title: 'Subjects (select maximum three of any)',
//             //     listofWidgets: [
//             //       'Maths',
//             //       'Science',
//             //       'Holy Quran',
//             //       'English',
//             //       'Computer Science',
//             //       'All Sciences, Art and Islamic',
//             //       'Arts and others'
//             //     ]),
//             Divider(),
//           ],
//         ),
//       ),
//     );
//   }
// }
