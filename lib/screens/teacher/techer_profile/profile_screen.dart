import 'dart:math';

import 'package:flutter/material.dart';

class TeacherProfileScreen extends StatefulWidget {
  const TeacherProfileScreen({super.key});

  @override
  State<TeacherProfileScreen> createState() => _TeacherProfileScreenState();
}

class _TeacherProfileScreenState extends State<TeacherProfileScreen> {
  int counter = 0;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 15,
        shadowColor: Colors.blue,
        title: const Text('Profile'),
      ),
        body: const SafeArea(
      child: MyDrawer(),
    ));
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      width: double.infinity,
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          // const ListTile(
          //   title: Text('Profile'),
          // ),

          // const Padding(
          //   padding: EdgeInsets.only(left: 20),
          //   child: Text(
          //     'Sign in to your account',
          //     style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
          //   ),
          // ),
          // const SizedBox(height: 10),
          // Padding(
          //   padding: const EdgeInsets.only(left: 20),
          //   child: Row(
          //     children: [
          //       Container(
          //         height: 40,
          //         width: MediaQuery.of(context).size.width * .30,
          //         decoration: BoxDecoration(
          //             border: Border.all(
          //               color: Colors.blue, // Change color as needed
          //               width: 1.0, // Adjust border width
          //             ),
          //             // border: ,
          //             borderRadius: BorderRadius.circular(5)),
          //         child: TextButton(
          //           onPressed: () {},
          //           child: const Text(
          //             'Sign Up',
          //             style: TextStyle(color: Colors.blue),
          //           ),
          //         ),
          //       ),
          //       const SizedBox(width: 10),
          //       Container(
          //         height: 40,
          //         width: MediaQuery.of(context).size.width * .60,
          //         decoration: BoxDecoration(
          //             color: Colors.blue,
          //             borderRadius: BorderRadius.circular(5)),
          //         child: TextButton(
          //             child: const Text(
          //               'Sign In',
          //               style: TextStyle(color: Colors.white),
          //             ),
          //             onPressed: () {}),
          //       ),
          //     ],
          //   ),
          // ),
          // const SizedBox(height: 30),
          const Divider(
            thickness: 4,
            color: Colors.blue,
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.blue[100],
            child: const Text(
              // textAlign: TextAlign.center,
              'App General',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black),
            ),
          ),

          const SizedBox(height: 10),
          ListTile(
            leading: const Icon(Icons.info, color: Colors.blue),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.blue),
            title: const Text('Contact Us'),
            onTap: () {},
          ),
          const Divider(
            thickness: 2,
            color: Colors.blue,
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: const Icon(Icons.thumb_up, color: Colors.blue),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.blue),
            title: const Text('Rate Us'),
            onTap: () {},
          ),
          const Divider(thickness: 2, color: Colors.blue),
          const SizedBox(height: 10),
          ListTile(
            leading: const Icon(Icons.share, color: Colors.blue),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.blue),
            title: const Text('Share this App'),
            onTap: () {},
          ),
          const Divider(thickness: 2, color: Colors.blue),
          const SizedBox(height: 10),
          ListTile(
            leading: const Icon(Icons.privacy_tip_outlined, color: Colors.blue),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.blue),
            title: const Text('Terms and Privacy Policy'),
            onTap: () {},
          ),
          const Divider(
            thickness: 2,
            color: Colors.blue,
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: const Icon(Icons.info, color: Colors.blue),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.blue),
            title: const Text('About Tutor Me Now'),
            onTap: () {},
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 40,
              width: MediaQuery.of(context).size.width * .50,
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
                  selectionColor: Colors.red,
                  'Post request for Tutor',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
          ),
          // const SizedBox(height: 20)
          // Add more ListTile widgets for other options
        ],
      ),
    );
  }
}
