import 'package:flutter/material.dart';

class NewMessagePage extends StatefulWidget {
  const NewMessagePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
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
      dummyListData.forEach((item) {
        // Check if the item contains the query as a substring
        if (item.toLowerCase().contains(query.toLowerCase())) {
          filteredList.add(item);
        }
      });

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
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Yeni Mesaj'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              TextField(
                onChanged: (String value) {
                  filterSearchResults(value);
                },
                controller: editingController,
                decoration: InputDecoration(
                  //  labelText: "Kişileri ve grupları ara",
                  hintText: "Kişileri ve grupları ara",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(" ${items[index]} "),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
