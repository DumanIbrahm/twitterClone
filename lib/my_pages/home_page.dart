import 'package:flutter/material.dart';
import 'package:twitter_clone/constant.dart';
import 'package:twitter_clone/my_pages/bottom_navigation_bar.dart';
import 'package:twitter_clone/my_pages/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [const Post()],
        ),
      ),
    );
  }
}

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              const Expanded(
                flex: 1,
                child: CircleAvatar(),
              ),
              Expanded(
                flex: 9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(),
                    Container(
                      width: 200,
                      child: const Text(
                          "26 Temmuz 3. Afrika sıcak hava dalgasının ardından beklenen 4. Afrika sıcak hava dalgasının yurdumuza gelişi iptal oldu. Herkese müjde olsun"),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      child: Image.network(
                          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg",
                          fit: BoxFit.cover),
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Icon(Icons.comment_outlined),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "661",
                style: TextStyle(color: Pallete.textGrey),
              ),
              const SizedBox(
                width: 25,
              ),
              const Icon(Icons.repeat_outlined),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "3.077",
                style: TextStyle(color: Pallete.textGrey),
              ),
              const SizedBox(
                width: 25,
              ),
              const Icon(Icons.favorite_border_outlined),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "43.7B",
                style: TextStyle(color: Pallete.textGrey),
              ),
              const SizedBox(
                width: 25,
              ),
              const Icon(Icons.query_stats),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "2.5Mn",
                style: TextStyle(color: Pallete.textGrey),
              ),
              const SizedBox(
                width: 25,
              ),
              const Icon(Icons.share_outlined)
            ],
          ),
        ],
      ),
    );
  }
}
