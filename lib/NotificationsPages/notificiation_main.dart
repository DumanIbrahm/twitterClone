import 'package:flutter/material.dart';
import 'package:twitter_clone/NotificationsPages/setting_for_notifications.dart';

class NatificationsPage extends StatefulWidget {
  const NatificationsPage({super.key});

  @override
  State<NatificationsPage> createState() => _NatificationsPageState();
}

class _NatificationsPageState extends State<NatificationsPage> {
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
        // bottomNavigationBar: const BottomNavigationBars(
        // ),
        //drawer: const DrawerMenu(),
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          //leading: const Icon(Icons.person),
          title: const Text(
            "Bildirimler",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions:  [
            Padding(
              padding: EdgeInsets.only(right: 10, left: 10),
              child: IconButton(
                onPressed: (){
                  Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SettingsForNotiPage()),
                        (route) => true,
                      );
                },
                icon: Icon(Icons.settings),
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
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: ListTile(
              tileColor: Color.fromRGBO(5, 20, 33, 12.94),
              leading: Icon(Icons.add),
              title: Text(
                "@sadsasa adlı hesabına 15 Temmuz 2023 tarihinde yeni bir cihazdan giriş yapıldı. Bunu şimdi inceleyebilirsin.",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    "/Users/ibrahimduman/Desktop/FLUTTER/twittterr_clone/assets/images/onay.jpg",
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
                          fixedSize: const Size(395, 55),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text("Abone ol"),
                      )),
                      const Padding(
                        padding:  EdgeInsets.only(top: 8.0),
                        child:  Text("Sınırlı bir süre için geçerli teklif : ₺ 2.199,00/yıl",style: TextStyle(color: Colors.white)),
                      )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,),
            child: SizedBox(
              child: Center(
                child: Column(children: const [
                    Text("Sohbete katıl\n",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30)),
                    Text("Twitter'da bir Twette veya yanıtta senden bahsedildiğinde burada görebilirsin.",style: TextStyle(
                                color: Colors.white),)
                ],),
              ),
            ),
          )
        ]),
      ));
}

