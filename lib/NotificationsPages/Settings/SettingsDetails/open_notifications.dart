import 'package:flutter/material.dart';

class OpenNotifications extends StatefulWidget {
  const OpenNotifications({super.key});

  @override
  State<OpenNotifications> createState() => _OpenNotificationsState();
}

class _OpenNotificationsState extends State<OpenNotifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const ListTile(
            title: Text(
              "Anlık Bildirimler",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            subtitle: Text(
              "@ibrahimdmn",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: const Text(
                  "Bitti",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ))
          ]),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const[
                 ListTile(
                  title: Text(
                    "Bildirimler açılsın mı?",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                 ListTile(
                  title: Text(
                    "Twitter'dan bildirim almak için iOS Ayarlarında bildirimleri açılmalısın.Bunu şu şekilde yapabilirsin:",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: Colors.white),
                  onPressed: () {},
                  child: const Text("iOS Ayarlarını aç",
                      style: TextStyle(color: Colors.black))),
            ),
          )
        ],
      ),
    );
  }
}
