import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/constant.dart';
import 'package:twitter_clone/my_pages/bottom_navigation_bar.dart';
import 'package:twitter_clone/my_pages/drawer.dart';
import 'package:twitter_clone/my_pages/trend_settings.dart';

class TrendPage extends StatefulWidget {
  const TrendPage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _TrendPageState();
}

class _TrendPageState extends State<TrendPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.primaryColor,
      drawer: DrawerMenu(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Pallete.textColor),
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
                      child: Text("Twitter'da ara"),
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TrendSettings()),
                        (route) => false);
                  },
                  icon: Icon(Icons.settings))
            ],
          ),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
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
            subtitle: ListTile(
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
            trailing: Icon(
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
            subtitle: ListTile(
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
            trailing: Icon(
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
            subtitle: ListTile(
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
            trailing: Icon(
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
            subtitle: ListTile(
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
            trailing: Icon(
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
            subtitle: ListTile(
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
            trailing: Icon(
              Icons.more_vert,
              color: Pallete.textColor,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Daha fazla göster",
              style: TextStyle(
                color: Pallete.twitterBlue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    "Apple",
    "Banana",
    "Cherry",
    "Durian",
    "Mango",
    "Fig",
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, "");
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
