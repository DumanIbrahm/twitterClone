import 'package:flutter/material.dart';
import 'package:twitter_clone/constant.dart';
import 'package:twitter_clone/my_pages/drawer.dart';
import 'package:twitter_clone/my_pages/home_page.dart';
import 'package:twitter_clone/my_pages/messages_page.dart';
import 'package:twitter_clone/my_pages/notifation_main.dart';
import 'package:twitter_clone/my_pages/trend_page.dart';

class Navigators extends StatefulWidget {
  const Navigators({super.key});

  @override
  State<Navigators> createState() => _NavigatorState();
}

class _NavigatorState extends State<Navigators> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List pages = [
    const HomePage(),
    const TrendPage(),
    const NotificationsPage(),
    const MessageScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerMenu(),
        body: pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Pallete.primaryColor,
          unselectedItemColor: Pallete.textColor,
          unselectedFontSize: 1,
          selectedFontSize: 1,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "",
              backgroundColor: Pallete.primaryColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "",
              backgroundColor: Pallete.primaryColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined),
              label: "",
              backgroundColor: Pallete.primaryColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail_outline),
              label: "",
              backgroundColor: Pallete.primaryColor,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ));
  }
}
