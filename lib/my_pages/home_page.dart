import 'package:flutter/material.dart';
import 'package:twitter_clone/constant.dart';
import 'package:twitter_clone/my_pages/details.dart';
import 'package:twitter_clone/my_pages/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(
          drawer: DrawerMenu(),
          appBar: AppBar(
            backgroundColor: Pallete.primaryColor,
            bottom: const TabBar(
              indicatorColor: Colors.blue,
              labelColor: Pallete.textColor,
              tabs: <Widget>[
                Tab(
                  text: "Sana Özel",
                ),
                Tab(
                  text: "Takip Edilenler",
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            ListView(
              children: [
                //üst taraftaki profil listesi
                //Card
                materialMethod(context),
                materialMethod2(context),
                materialMethod(context),
                materialMethod2(context),
                materialMethod2(context),
                //Card
              ],
            ),
            ListView(
              children: [
                //üst taraftaki profil listesi
                //Card
                materialMethod2(context),
                materialMethod(context),
                materialMethod2(context),
                materialMethod(context),
                materialMethod2(context),
                //Card
              ],
            ),
          ]),
        ),
      ),
    );
  }

  Material materialMethod(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(16),
      elevation: 4,
      child: Container(
        color: Pallete.primaryColor,
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 160,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Daisy",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Pallete.textColor),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "@daisy",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  color: Pallete.textGrey),
                            ),
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.more_vert,
                        color: Colors.grey,
                        size: 22,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 160,
                    child: const Text(
                      "This official website features a ribbed knit zipper jacket that is "
                      "modern and stylish. It looks very temparament and is recommend to friends.This official website features a ribbed knit zipper jacket that is "
                      "modern and stylish. It looks very temparament and is recommend to friends.This official website features a ribbed knit zipper jacket that is "
                      "modern and stylish. It looks very temparament and is recommend to friends.This official website features a ribbed knit zipper jacket that is "
                      "modern and stylish. It looks very temparament and is recommend to friends.This official website features a ribbed knit zipper jacket that is "
                      "modern and stylish. It looks very temparament and is recommend to friends.This official website features a ribbed knit zipper jacket that is "
                      "modern and stylish. It looks very temparament and is recommend to friends.This official website features a ribbed knit zipper jacket that is "
                      "modern and stylish. It looks very temparament and is recommend to friends.",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Montserrat",
                          color: Colors.grey),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Details(
                              imgpath:
                                  "https://cdn.pixabay.com/photo/2017/08/06/12/06/people-2591874_960_720.jpg")));
                    },
                    child: Hero(
                      tag:
                          "https://cdn.pixabay.com/photo/2017/08/06/12/06/people-2591874_960_720.jpg",
                      child: Container(
                        width: MediaQuery.of(context).size.width - 160,
                        height: MediaQuery.of(context).size.height - 430,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: const DecorationImage(
                                image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2017/08/06/12/06/people-2591874_960_720.jpg",
                                ),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Row(
                          children: const [
                            Icon(
                              Icons.comment_outlined,
                              color: Pallete.textGrey,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "661",
                              style: TextStyle(color: Pallete.textGrey),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: const [
                            Icon(
                              Icons.repeat_outlined,
                              color: Pallete.textGrey,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "3.077",
                              style: TextStyle(color: Pallete.textGrey),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: const [
                            Icon(
                              Icons.favorite_border_outlined,
                              color: Pallete.textGrey,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "43.7B",
                              style: TextStyle(color: Pallete.textGrey),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: const [
                            Icon(
                              Icons.query_stats,
                              color: Pallete.textGrey,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "2.5Mn",
                              style: TextStyle(color: Pallete.textGrey),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      const Expanded(
                        child: Icon(
                          Icons.share_outlined,
                          color: Pallete.textGrey,
                        ),
                      )
                    ],
                  ),],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Material materialMethod2(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(16),
      elevation: 4,
      child: Container(
        color: Pallete.primaryColor,
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 160,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Kamran",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Pallete.textColor),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "@kamran",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  color: Pallete.textGrey),
                            ),
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.more_vert,
                        color: Colors.grey,
                        size: 22,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 160,
                    child: const Text(
                      "This official website features a ribbed knit zipper jacket that is "
                      "modern and stylish. It looks very temparament and is recommend to friends.This official website features a ribbed knit zipper jacket that is "
                      "modern and stylish. It looks very temparament and is recommend to friends.This official website features a ribbed knit zipper jacket that is "
                      "modern and stylish. It looks very temparament and is recommend to friends.This official website features a ribbed knit zipper jacket that is "
                      "modern and stylish. It looks very temparament and is recommend to friends.This official website features a ribbed knit zipper jacket that is "
                      "modern and stylish. It looks very temparament and is recommend to friends.This official website features a ribbed knit zipper jacket that is "
                      "modern and stylish. It looks very temparament and is recommend to friends.This official website features a ribbed knit zipper jacket that is "
                      "modern and stylish. It looks very temparament and is recommend to friends.",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Montserrat",
                          color: Colors.grey),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 160,
                    height: MediaQuery.of(context).size.height - 430,
                    child: Image.network(
                      "https://cdn.pixabay.com/photo/2017/08/06/12/06/people-2591874_960_720.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.comment_outlined,
                            color: Pallete.textGrey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "661",
                            style: TextStyle(color: Pallete.textGrey),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.repeat_outlined,
                            color: Pallete.textGrey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "3.077",
                            style: TextStyle(color: Pallete.textGrey),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.favorite_border_outlined,
                            color: Pallete.textGrey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "43.7B",
                            style: TextStyle(color: Pallete.textGrey),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.query_stats,
                            color: Pallete.textGrey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "2.5Mn",
                            style: TextStyle(color: Pallete.textGrey),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.share_outlined,
                        color: Pallete.textGrey,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
