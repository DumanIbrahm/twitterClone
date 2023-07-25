import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PopularTweets extends StatefulWidget {
  const PopularTweets({super.key});

  @override
  State<PopularTweets> createState() => _PopularTweetsState();
}

class _PopularTweetsState extends State<PopularTweets> {
  bool isChecked = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const ListTile(
          title: Text(
            "Popüler Tweetler ve Hikayeler",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
              title: const Text(
                "Günlük",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              trailing: Checkbox(
                checkColor: Colors.white,
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              )),
          ListTile(
              title: const Text(
                "Haftalık",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              trailing: Checkbox(
                checkColor: Colors.white,
                value: isChecked1,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              )),
          ListTile(
              title: const Text(
                "Periyodik olarak",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              trailing: Checkbox(
                checkColor: Colors.white,
                value: isChecked2,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              )),
          ListTile(
              title: const Text(
                "Kapalı",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              trailing: Checkbox(
                checkColor: Colors.white,
                value: isChecked3,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ))
        ],
      ),
    );
  }
}
