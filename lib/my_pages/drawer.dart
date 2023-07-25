import 'package:flutter/material.dart';
import 'package:twitter_clone/constant.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: Pallete.primaryColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0, top: 20),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0, right: 20),
                        child: Icon(Icons.more_vert, color: Pallete.textColor),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "User Name",
                                  style: TextStyle(color: Pallete.textColor),
                                ),
                                Icon(Icons.lock,
                                    color: Pallete.textColor, size: 15)
                              ],
                            ),
                            const Text(
                              "@username",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Row(
                      children: const [
                        Text("1000 ",
                            style: TextStyle(color: Pallete.textColor)),
                        Text("Takip eilen",
                            style: TextStyle(color: Colors.grey)),
                        SizedBox(width: 20),
                        Text("1000 ",
                            style: TextStyle(color: Pallete.textColor)),
                        Text("Takipçi", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 32),
                child: Divider(
                  color: Colors.grey.shade700,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.person_outline,
                        size: 24,
                      ),
                      label: const Text(
                        "Profil",
                        style: TextStyle(fontSize: 24),
                      ),
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Pallete.textColor)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.person_outline,
                        size: 24,
                      ),
                      label: const Text(
                        "Twitter Blue",
                        style: TextStyle(fontSize: 24),
                      ),
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Pallete.textColor)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_border,
                        size: 24,
                      ),
                      label: const Text(
                        "Yer İşaretleri",
                        style: TextStyle(fontSize: 24),
                      ),
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Pallete.textColor)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.list_alt,
                        size: 24,
                      ),
                      label: const Text(
                        "Listeler",
                        style: TextStyle(fontSize: 24),
                      ),
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Pallete.textColor)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.person_add_alt_1,
                        size: 24,
                      ),
                      label: const Text(
                        "Takipçi İstekleri",
                        style: TextStyle(fontSize: 24),
                      ),
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Pallete.textColor)),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 32),
                child: Divider(
                  color: Colors.grey.shade700,
                ),
              ),
              const ExpansionTileExample1(),
              const ExpansionTileExample2(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.person),
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all(Pallete.textColor)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ExpansionTileExample1 extends StatefulWidget {
  const ExpansionTileExample1({super.key});

  @override
  State<ExpansionTileExample1> createState() => _ExpansionTileExampleState1();
}

class _ExpansionTileExampleState1 extends State<ExpansionTileExample1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ExpansionTile(
            iconColor: Pallete.twitterBlue,
            expandedAlignment: Alignment.centerLeft,
            collapsedIconColor: Pallete.textColor,
            title: const Text(
              'Profesyonel Araçlar',
              style: TextStyle(color: Pallete.textColor),
            ),
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 8.0, bottom: 8, left: 2),
                      child: TextButton.icon(
                          style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.all(Pallete.textColor)),
                          onPressed: () {},
                          icon: const Icon(Icons.money_outlined),
                          label: const Text("Profesyoneller İçin Twitter")),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 8.0, bottom: 8, left: 2),
                      child: TextButton.icon(
                          style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.all(Pallete.textColor)),
                          onPressed: () {},
                          icon: const Icon(Icons.money_outlined),
                          label: const Text("Gelire dönüştürme")),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ExpansionTileExample2 extends StatefulWidget {
  const ExpansionTileExample2({super.key});

  @override
  State<ExpansionTileExample2> createState() => _ExpansionTileExampleState2();
}

class _ExpansionTileExampleState2 extends State<ExpansionTileExample2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ExpansionTile(
            iconColor: Pallete.twitterBlue,
            expandedAlignment: Alignment.centerLeft,
            collapsedIconColor: Pallete.textColor,
            title: const Text(
              'Ayarlar & Destek',
              style: TextStyle(color: Pallete.textColor),
            ),
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 8.0, bottom: 8, left: 2),
                      child: TextButton.icon(
                          style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.all(Pallete.textColor)),
                          onPressed: () {},
                          icon: const Icon(Icons.settings_outlined),
                          label: const Text("Ayarlar ve Gizlilik")),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 8.0, bottom: 8, left: 2),
                      child: TextButton.icon(
                          style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.all(Pallete.textColor)),
                          onPressed: () {},
                          icon: const Icon(Icons.help_outline),
                          label: const Text("Yardım Merkezi")),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}