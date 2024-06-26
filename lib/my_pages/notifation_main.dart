import 'package:flutter/material.dart';
import 'package:twitter_clone/my_pages/Settings/setting_for_notifications.dart';
import 'package:twitter_clone/my_pages/drawer.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return tabController(context);
  }
}

Widget tabController(context) {
  int tabsCount = 3;
  return DefaultTabController(
      initialIndex: 0,
      length: tabsCount,
      child: Scaffold(
        drawer: const DrawerMenu(),
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          //leading: const Icon(Icons.person),
          title: const Text(
            "Bildirimler",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: IconButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsForNotiPage()),
                    (route) => true,
                  );
                },
                icon: const Icon(Icons.settings),
              ),
            )
          ],
          // The elevation value of the app bar when scroll view has
          // scrolled underneath the app bar.
          scrolledUnderElevation: 4.0,
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                text: "Tümü",
              ),
              Tab(
                text: "Onaylananlar",
              ),
              Tab(
                text: "Bahsedenler",
              ),
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          Column(
            children: const [
              ListTile(
                //leading: Icon(Bird.twitter, size: 25, color: Pallete.twitterBlue,),
                title: Text(
                  "@sadsasa adlı hesabına 15 Temmuz 2023 tarihinde yeni bir cihazdan giriş yapıldı. Bunu şimdi inceleyebilirsin.",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/onaylananlar.jpg",
                  ),
                  const Text("Burada görecek bir şey yok. Henüz...",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30)),
                  const Text(
                      "Onaylanmış bir hesaptan gelen beğeniler, bahsetmeler, Retweetler ve daha birçok şeyi burada bulabilirsin.\n\nHesabın onaylı değil mi? Hemen abone olarak onaylanmış hesap sahibi ol ve kaliteli sohbetler için diğer insanlara katıl.\n",
                      style: TextStyle(color: Colors.white)),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          fixedSize: const Size(395, 55),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          "Abone ol",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      )),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                        "Sınırlı bir süre için geçerli teklif : ₺ 2.199,00/yıl",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
            ),
            child: SizedBox(
              child: Center(
                child: Column(
                  children: [
                    Image.asset("assets/images/bahsedenler.jpg"),
                    const Text("Sohbete katıl\n",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30)),
                    const Text(
                      "Twitter'da bir Twette veya yanıtta senden bahsedildiğinde burada görebilirsin.",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          )
        ]),
      ));
}
