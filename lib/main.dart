import 'package:flutter/material.dart';
import 'package:twitter_clone/constant.dart';
import 'package:twitter_clone/login_page/login_page.dart';
import 'package:twitter_clone/my_pages/drawer.dart';
import 'package:twitter_clone/my_pages/home_page.dart';
import 'package:twitter_clone/my_pages/messages_page.dart';
import 'package:twitter_clone/my_pages/notifation_main.dart';
import 'package:twitter_clone/my_pages/trend_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // HomePage? pageHome;
  // NotificationsPage? pageNotifications;
  // TrendPage? pageTrend;
  // MessageScreen? pageMessages;

  // var keyHomePage = const PageStorageKey("key_home_page");
  // var keyTrend = const PageStorageKey("key_trend_page");
  // var keyNotification = const PageStorageKey("key_notification_page");
  // var keyMessages = const PageStorageKey("key_message_page");

  // List<Widget>? allPages;
  int _selectedIndex = 0;

  // void initState() {
  //   super.initState();
  //   pageHome = HomePage(keyHomePage);
  //   pageNotifications = NotificationsPage(key: keyNotification);
  //   pageTrend = TrendPage(key: keyTrend);
  //   pageMessages = MessageScreen(
  //     key: keyMessages,
  //   );
  //    allPages = [pageHome!,pageTrend!, pageNotifications!,  pageMessages!];
  // }
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
        // body: _selectedIndex <= allPages!.length - 1
        //     ? allPages![_selectedIndex]
        //     : allPages![0],
        body: pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
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
