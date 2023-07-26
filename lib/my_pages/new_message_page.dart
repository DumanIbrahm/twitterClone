// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:twitter_clone/my_pages/message_to_person.dart';

class NewMessagePage extends StatefulWidget {
  const NewMessagePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  // ignore: library_private_types_in_public_api
  _NewMessagePageState createState() => _NewMessagePageState();
}

class _NewMessagePageState extends State<NewMessagePage> {
  TextEditingController editingController = TextEditingController();

  final duplicateItems = ['Özge', 'Nigar', 'İbrahim', 'Enes', 'Özgür'];
//var items = List<String>();
//List<String> items = List<String>();
  var items = List<String>.empty(growable: true);

//List<String> duplicate = ['Özge', 'Nigar', 'İbrahim', 'Enes', 'Özgür'];
//List<String> items= ['Özge', 'Nigar', 'İbrahim', 'Enes', 'Özgür'];

  @override
  void initState() {
    items.addAll(duplicateItems);
    super.initState();
  }

  void filterSearchResults(String query) {
    List<String> dummyListData = List<String>.empty(growable: true);
    dummyListData.addAll(duplicateItems);

    if (query.isNotEmpty) {
      List<String> filteredList = List<String>.empty(growable: true);

      for (var item in dummyListData) {
        // Check if the item contains the query as a substring
        if (item.toLowerCase().contains(query.toLowerCase())) {
          filteredList.add(item);
        }
      }

      setState(() {
        items.clear();
        items.addAll(filteredList);
      });
    } else {
      setState(() {
        items.clear();
        items.addAll(duplicateItems);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Yeni Mesaj'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            TextField(
              style: const TextStyle(color: Colors.white),
              onChanged: (String value) {
                filterSearchResults(value);
              },
              controller: editingController,
              decoration: const InputDecoration(
                //  labelText: "Kişileri ve grupları ara",
                hintText: "Kişileri ve grupları ara",
                hintStyle: TextStyle(color: Colors.white),
                iconColor: Colors.white,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      _onTileTapped(index);
                    },
                    title: Text(
                      " ${items[index]} ",
                      style: const TextStyle(color: Colors.white),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }

  // void _onTileTapped() {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //         builder: (context,index) => MessageToPerson(
  //               item: items[index], index: index,
  //             )),
  //   );
  // }

  void _onTileTapped(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MessageToPerson(
          item: items[index],
          index: index,
        ),
      ),
    );
  }
}
