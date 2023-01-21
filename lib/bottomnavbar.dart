// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:medicalapp/bottomnavbarscreens/calender.dart';
import 'package:medicalapp/bottomnavbarscreens/homepage.dart';
import 'package:medicalapp/bottomnavbarscreens/notifications.dart';
import 'package:medicalapp/bottomnavbarscreens/profile.dart';
import 'package:medicalapp/bottomnavbarscreens/search.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _HomePageState();
}

class _HomePageState extends State<BottomNavBar> {
  int currentPage = 0;
  final screens = [
    HomePage(),
    Calender(),
    Search(),
    Notifications(),
    Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: screens,
      ),
      // appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        elevation: 0,
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: currentPage == 0
                  ? Icon(
                      Icons.home,
                      color: Colors.black,
                    )
                  : Icon(
                      Icons.home_max_outlined,
                      color: Colors.grey.shade700,
                    ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: currentPage == 1
                  ? Icon(
                      Icons.calendar_month,
                      color: Colors.black,
                    )
                  : Icon(
                      Icons.calendar_month_outlined,
                      color: Colors.grey.shade700,
                    ),
              label: "Calender"),
          BottomNavigationBarItem(
              icon: currentPage == 2
                  ? Icon(
                      Icons.search,
                      color: Colors.black,
                    )
                  : Icon(
                      Icons.search_outlined,
                      color: Colors.grey.shade700,
                    ),
              label: "Search"),
          BottomNavigationBarItem(
              icon: currentPage == 3
                  ? Icon(
                      Icons.notifications,
                      color: Colors.black,
                    )
                  : Icon(
                      Icons.notifications_outlined,
                      color: Colors.grey.shade700,
                    ),
              label: "Notifications"),
          BottomNavigationBarItem(
              icon: currentPage == 4
                  ? Icon(
                      Icons.person,
                      color: Colors.black,
                    )
                  : Icon(
                      Icons.person_outlined,
                      color: Colors.grey.shade700,
                    ),
              label: "Profile"),
        ],
      ),
    );
  }
}
