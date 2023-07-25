import 'package:flutter/material.dart';
import 'package:twitter_clone/constant.dart';
import 'package:twitter_clone/login_page/login_page.dart';
import 'package:twitter_clone/my_pages/drawer.dart';
import 'package:twitter_clone/my_pages/home_page.dart';
import 'package:twitter_clone/my_pages/login_page/login_page.dart';
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
