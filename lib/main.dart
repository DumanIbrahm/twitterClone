import 'package:flutter/material.dart';
import 'package:twitter_clone/my_pages/bottom_navigation_bar.dart';
import 'package:twitter_clone/my_pages/drawer.dart';
import 'package:twitter_clone/my_pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  HomePage? pageHome;
  // NotificationsPage? pageNotifications;
  // EklemeSayfasi? sayfaEkle;
  // ProfilSayfasi? sayfaKisiler;

  var keyHomePage = const PageStorageKey("key_home_page");
  var keySearch = const PageStorageKey("key_search_page");
  var keyNotification = const PageStorageKey("key_notification_page");
  var keyMessages = const PageStorageKey("key_message_page");

  List<Widget>? allPages;
  int _selectedIndex = 0;

  void initState() {
    // TODO: implement initState
    super.initState();
    // pageHome = HomePage(keyHomePage);
    // pageNotifications = NotificationsPage(keyNotification);
    // sayfaArama = AramaSayfasi(keyArama);
    // sayfaEkle = EklemeSayfasi(keyEkleme);
    // sayfaKisiler = ProfilSayfasi();
    // allPages = [pageHome!, sayfaArama!, sayfaEkle!];
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: DrawerMenu(),
      // body: _selectedIndex <= allPages!.length - 1
      //     ? allPages![_selectedIndex]
      //     : allPages![0],
      body: HomePage(),
    );
  }
}
