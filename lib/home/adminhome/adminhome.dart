import 'package:flutter/material.dart';
import 'package:libera_2/home/adminhome/add_post.dart';
import 'package:libera_2/home/adminhome/chat.dart';
import 'package:libera_2/home/adminhome/dash.dart';
import 'package:libera_2/home/adminhome/notification/complaint.dart';
import 'package:libera_2/home/adminhome/notification/request.dart';
import 'package:libera_2/home/adminhome/profile.dart';
import 'package:libera_2/home/adminhome/settings.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class AdminMain extends StatefulWidget {
  const AdminMain({super.key});

  @override
  State<AdminMain> createState() => _AdminMainState();
}

class _AdminMainState extends State<AdminMain> {
  final List pages = [
    Dashboard(),
    Chat(),
    const AddBook(),
    Profile(),
    Setting()
  ];

  int selectedIndex = 0;
  final List appbarTitle = [
    'Dash Board',
    'Notifications',
    'Add Book',
    'Profile',
    'Settings'
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(appbarTitle[selectedIndex]),
          bottom: selectedIndex == 1
              ? const TabBar(
                  tabs: [
                    Tab(
                      text: 'Complaints',
                    ),
                    Tab(
                      text: 'Requests',
                    ),
                  ],
                )
              : null,
          actions: [
            PopupMenuButton(
              itemBuilder: (context) => [
                const PopupMenuItem(
                  child: const Text('profile'),
                  value: 1,
                ),
                const PopupMenuItem(
                  child: const Text('Chat'),
                  value: 2,
                ),
                const PopupMenuItem(
                  child: const Text('Settings'),
                  value: 3,
                ),
                const PopupMenuItem(
                  child: const Text('Sign Out'),
                  value: 4,
                ),
              ],
              onSelected: (value) {
                if (value == 1) {
                  Navigator.popAndPushNamed(context, 'login');
                } else if (value == 2) {
                  Navigator.popAndPushNamed(context, 'login');
                } else if (value == 3) {
                  Navigator.popAndPushNamed(context, 'login');
                } else {
                  Navigator.popAndPushNamed(context, 'login');
                }
              },
            )
          ],
        ),
        body: selectedIndex == 1
            ? TabBarView(
                children: [ComplaintPage(), RequestPage()],
              )
            : pages[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.indigo,
          selectedItemColor: Colors.blue,
          showSelectedLabels: true,
          unselectedLabelStyle: const TextStyle(color: Colors.black),
          //  selectedLabelStyle: TextStyle(color: Colors.black),
          // fixedColor: Colors.blue,
          currentIndex: selectedIndex,
          backgroundColor: const Color.fromARGB(255, 193, 223, 249),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.blue,
              ),
              backgroundColor: Colors.white,
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.blue,
                ),
                label: 'Notification'),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
                color: Colors.blue,
              ),
              label: 'Post',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                label: 'Profile'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
                label: 'Settings'),
          ],
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
        ),
      ),
    );
  }
}
