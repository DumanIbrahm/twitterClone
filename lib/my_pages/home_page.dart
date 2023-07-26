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
    return const MaterialApp(
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
      child: RefreshIndicator(
        onRefresh: () {
          return Future.delayed(const Duration(seconds: 2));
        },
        child: DefaultTabController(
          length: 2,
          initialIndex: 0,
          child: Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Pallete.twitterBlue,
              child: const Icon(
                Icons.add,
                color: Pallete.textColor,
              ),
            ),
            drawer: const DrawerMenu(),
            appBar: AppBar(
              title: Center(
                child: Image.network(
                  'https://www.freepnglogos.com/uploads/twitter-logo-png/twitter-logo-vector-png-clipart-1.png',
                  width: 35,
                  height: 35,
                ),
              ),
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
                  materialMethod(context),
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
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://cdn.pixabay.com/photo/2017/08/06/12/06/people-2591874_960_720.jpg"),
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 160,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        verticalDirection: VerticalDirection.down,
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
                          Text(
                            " • 17 dk",
                            style: TextStyle(color: Pallete.textGrey),
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
                SizedBox(
                  width: MediaQuery.of(context).size.width - 160,
                  child: const Text(
                    "This official website features a ribbed knit zipper jacket that is "
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
                  height: 30,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                        flex: 1,
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
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
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
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
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
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
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
                      const Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.share_outlined,
                          color: Pallete.textGrey,
                        ),
                      )
                    ]),
              ],
            ),
          ),
        ]),
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
            const CircleAvatar(
              backgroundImage: NetworkImage(""),
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 160,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          verticalDirection: VerticalDirection.down,
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
                            Text(
                              " • 4 sa",
                              style: TextStyle(color: Pallete.textGrey),
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
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 160,
                    child: const Text(
                      "This official website features a ribbed knit zipper jacket that is "
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
                  SizedBox(
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
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                              width: 10,
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
                              width: 10,
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
                              width: 10,
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
                              width: 10,
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.share_outlined,
                          color: Pallete.textGrey,
                        )
                      ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
