import 'package:flutter/material.dart';
import 'package:twitter_clone/constant.dart';
import 'package:twitter_clone/my_pages/bottom_navigation_bar.dart';
import 'package:twitter_clone/my_pages/drawer.dart';
import 'package:twitter_clone/my_pages/trend_settings.dart';
import 'package:twitter_clone/my_pages/trend_topics.dart';
import 'custom_delegate.dart';

class TrendPage extends StatefulWidget {
  const TrendPage({super.key});

  @override
  State<StatefulWidget> createState() => _TrendPageState();
}

class _TrendPageState extends State<TrendPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.primaryColor,
      drawer: const DrawerMenu(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Pallete.textColor),
        backgroundColor: Pallete.primaryColor,
        actions: <Widget>[
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[700],
                      border: Border.all(
                        width: 0.5,
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        showSearch(
                            context: context, delegate: CustomSearchDelegate());
                      },
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.grey),
                      ),
                      child: const Text("Twitter'da ara"),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TrendSettings()),
                        (route) => false);
                  },
                  icon: const Icon(Icons.settings))
            ],
          ),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Trend Topics",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Pallete.textColor,
                )),
          ),
          ListTile(
            title: Text(
              "Trending in Japan",
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
            subtitle: const ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text(
                "#Flutter",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Pallete.textColor,
                ),
              ),
              subtitle: Text(
                "1,234 Tweets",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            trailing: const Icon(
              Icons.more_vert,
              color: Pallete.textColor,
            ),
          ),
          ListTile(
            title: Text(
              "Trending in Japan",
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
            subtitle: const ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text(
                "#LGS2023",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Pallete.textColor,
                ),
              ),
              subtitle: Text(
                "1,234 Tweets",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            trailing: const Icon(
              Icons.more_vert,
              color: Pallete.textColor,
            ),
          ),
          ListTile(
            title: Text(
              "Trending in Japan",
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
            subtitle: const ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text(
                "#Barbie",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Pallete.textColor,
                ),
              ),
              subtitle: Text(
                "1,234 Tweets",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            trailing: const Icon(
              Icons.more_vert,
              color: Pallete.textColor,
            ),
          ),
          ListTile(
            title: Text(
              "Trending in Japan",
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
            subtitle: const ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text(
                "#TwitterX",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Pallete.textColor,
                ),
              ),
              subtitle: Text(
                "234 Tweets",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            trailing: const Icon(
              Icons.more_vert,
              color: Pallete.textColor,
            ),
          ),
          ListTile(
            title: Text(
              "Trending in Japan",
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
            subtitle: const ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text(
                "Yaz",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Pallete.textColor,
                ),
              ),
              subtitle: Text(
                "1,234 Tweets",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            trailing: const Icon(
              Icons.more_vert,
              color: Pallete.textColor,
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                Navigator.pop(context);
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TrendTopics()),
                    (route) => false);
              });
            },
            child: const Text(
              "Daha fazla göster",
              style: TextStyle(
                color: Pallete.twitterBlue,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigationBars(),
    );
  }
}
