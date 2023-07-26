import 'package:flutter/material.dart';
import 'package:twitter_clone/constant.dart';

class NewTweet extends StatefulWidget {
  const NewTweet({super.key});

  @override
  State<NewTweet> createState() => _NewTweetState();
}

class _NewTweetState extends State<NewTweet> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Pallete.twitterBlue),
              ),
              onPressed: () {},
              child: const Text(
                "Tweetle",
                style: TextStyle(color: Pallete.textColor),
              ),
            )
          ],
        ),
        body: SizedBox(
          height: 100,
          child: Padding(
            padding: const EdgeInsets.only(top: 100.0, bottom: 100),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text("data"),
                    const CircleAvatar(
                      backgroundImage:
                          NetworkImage("https://picsum.photos/200"),
                    ),
                    Column(
                      children: const [],
                    ),
                  ],
                ),
                PageView(
                  key: PageStorageKey(context),
                  scrollDirection: Axis.horizontal,
                  pageSnapping: false,
                  onPageChanged: (value) {},
                  children: const [
                    Image(
                      image: AssetImage("assets/images/bahsedenler.jpg"),
                    ),
                    Image(
                      image: AssetImage("assets/images/onaylananlar.jpg"),
                    ),
                    Image(
                      image: AssetImage("assets/images/bahsedenler.jpg"),
                    ),
                    Image(
                      image: AssetImage("assets/images/onaylananlar.jpg"),
                    ),
                    Image(
                      image: AssetImage("assets/images/bahsedenler.jpg"),
                    ),
                    Image(
                      image: AssetImage("assets/images/onaylananlar.jpg"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
