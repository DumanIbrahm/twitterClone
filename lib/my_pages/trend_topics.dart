import 'package:flutter/material.dart';
import 'package:twitter_clone/constant.dart';
import 'package:twitter_clone/my_pages/trend_page.dart';
import 'package:twitter_clone/my_pages/trend_settings.dart';

class TrendTopics extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _trendTopic();
  }
}

class _trendTopic extends State<TrendTopics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.primaryColor,
      appBar: AppBar(
        backgroundColor: Pallete.primaryColor,
        title: const Text("Trend Topics"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => TrendPage()),
                (route) => false);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Pallete.textColor,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TrendSettings()));
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: ListView(
        children: [
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
        ],
      ),
    );
  }
}
