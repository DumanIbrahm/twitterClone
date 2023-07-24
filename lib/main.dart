import 'package:flutter/material.dart';
import 'package:twitter_clone/my_pages/bottom_navigation_bar.dart';
import 'package:twitter_clone/my_pages/drawer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
          // leading: IconButton(
          //     onPressed: () {
          //       Scaffold.of(context).openDrawer();
          //     },
          //     icon: const Icon(Icons.person_sharp)),
        ),
        bottomNavigationBar: BottomNavigationBars(),
        drawer: DrawerMenu(),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
