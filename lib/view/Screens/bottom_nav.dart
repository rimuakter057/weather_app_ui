import 'package:flutter/material.dart';
import 'package:weather_qpp_ui/view/Screens/profile_page/profile_page.dart';

import 'SearchPage/search_bar_page.dart';
import 'home_page.dart';
import 'notification_page/notification_page.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int currentIndex = 0;
  List screens =[
    const HomePage(),
    const SearchPage(),
    const ProfilePage(),
    const NotificationPage (),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
         height: MediaQuery.sizeOf(context).height*.08,
        color: Colors.indigo.shade900,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex =0;
                  });
                },
                icon: Icon(
                  Icons.home,
                  size: 30,
                  color:  currentIndex ==0?Colors.grey :Colors.white,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex=1;
                  });
                },
                icon: Icon(
                  Icons.search,
                  size: 30,
                  color:  currentIndex==1?Colors.grey :Colors.white,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex =2;
                  });
                },
                icon: Icon(
                  Icons.person_outline,
                  size: 30,
                  color: currentIndex==2?Colors.grey :Colors.white,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex=3;
                  });
                },
                icon: Icon(
                  Icons.notifications_none,
                  size: 30,
                  color: currentIndex==3?Colors.grey :Colors.white,
                )),
          ],
        ),
      ),
      body: screens[currentIndex],
    );
  }
}
