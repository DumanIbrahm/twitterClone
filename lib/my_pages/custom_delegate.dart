import 'package:flutter/material.dart';
import 'package:twitter_clone/constant.dart';

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    "Twitter",
    "Barbie",
    "Oppenheimer",
    "Yasin Kam",
    "Flutter",
    "Famous Developer İbrahim Duman",
    "AntiG NS",
    "ÖzgürReis",
    "Özge Havva Şahin",
    "Nigar"
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: const Icon(
          Icons.clear,
        ),
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
          tileColor: Pallete.primaryColor,
          title: Text(
            result,
            style: const TextStyle(
              color: Pallete.textColor,
            ),
          ),
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
          tileColor: Pallete.primaryColor,
          title: Text(
            result,
            style: const TextStyle(
              color: Pallete.textColor,
            ),
          ),
        );
      },
    );
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    return Theme.of(context).copyWith(
      scaffoldBackgroundColor: Pallete.primaryColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: Pallete.primaryColor,
      ),
      hintColor: Pallete.textColor,
      textTheme: const TextTheme(
        headline6: TextStyle(
          color: Pallete.textColor,
        ),
      ),
      primaryTextTheme: const TextTheme(
        headline6: TextStyle(color: Colors.white),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        hintStyle: TextStyle(
          color: Pallete.textColor,
        ),
      ),
    );
  }
}
