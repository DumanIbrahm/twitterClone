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
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(),
          // Hero(
          //   tag: widget.imgpath,
          //   child: Container(
          //     width: MediaQuery.of(context).size.width,
          //     height: MediaQuery.of(context).size.height,
          //     decoration: BoxDecoration(
          //         image: DecorationImage(
          //             image: AssetImage(widget.imgpath), fit: BoxFit.cover)),
          //   ),
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
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
                    width: 25,
                  ),
                ],
              ),
              Row(
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
                    width: 25,
                  ),
                ],
              ),
              Row(
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
                    width: 25,
                  ),
                ],
              ),
              Row(
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
                  SizedBox(
                    width: 25,
                  ),
                ],
              ),
              const Icon(
                Icons.share_outlined,
                color: Pallete.textGrey,
              )
            ],
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Tweet your reply",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
