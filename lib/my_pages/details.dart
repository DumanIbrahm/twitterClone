import 'package:flutter/material.dart';
import 'package:twitter_clone/constant.dart';

class Details extends StatefulWidget {
  var imgpath;

  Details({required this.imgpath, super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Pallete.primaryColor,
        appBar: AppBar(
          backgroundColor: Pallete.primaryColor,
          actions: [
            Icon(Icons.more_vert),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2017/08/06/12/06/people-2591874_960_720.jpg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          "Daisy",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Pallete.textColor),
                        ),
                        Text(
                          "@daisy",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              color: Pallete.textGrey),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          side: BorderSide(color: Pallete.textColor),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: () {},
                      child: Text(
                        "Takip et",
                        style: TextStyle(color: Pallete.textColor),
                      )),
                )
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width - 160,
              height: MediaQuery.of(context).size.height - 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.imgpath), fit: BoxFit.cover)),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
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
                  Expanded(
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
                  Expanded(
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
                  Expanded(
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
                      ],
                    ),
                  ),
                  Expanded(
                    child: const Icon(
                      Icons.share_outlined,
                      color: Pallete.textGrey,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                style: TextStyle(color: Pallete.textColor),
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Pallete.textGrey),
                  hintText: "Yanıtını Tweetle",
                  hintStyle: TextStyle(color: Pallete.textGrey),
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                    borderSide: BorderSide(
                      color: Pallete.textGrey,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}