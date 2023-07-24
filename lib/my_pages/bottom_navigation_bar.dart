import 'package:flutter/material.dart';
import 'package:twitter_clone/constant.dart';

class BottomNavigationBars extends StatefulWidget {
  const BottomNavigationBars({super.key});

  @override
  State<BottomNavigationBars> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBars> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
    );
  }
}
