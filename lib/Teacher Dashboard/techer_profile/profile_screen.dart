import 'dart:math';

import 'package:flutter/material.dart';

class TeacherProfileScreen extends StatefulWidget {
  const TeacherProfileScreen({super.key});

  @override
  State<TeacherProfileScreen> createState() => _TeacherProfileScreenState();
}

class _TeacherProfileScreenState extends State<TeacherProfileScreen> {



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

          TextButton(

            onPressed: () {},
            child: const Text(
              selectionColor: Colors.red,
              'Post request for Tutor',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          // const SizedBox(height: 20)
          // Add more ListTile widgets for other options
        ],
      ),
    );
  }
}
