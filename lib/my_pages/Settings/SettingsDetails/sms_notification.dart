import 'package:flutter/material.dart';

class SMSBildirim extends StatefulWidget {
  const SMSBildirim({super.key});

  @override
  State<SMSBildirim> createState() => _SMSBildirimState();
}

class _SMSBildirimState extends State<SMSBildirim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const ListTile(
            title: Text(
              "SMS Bildirimleri",
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
      body: Column(children: [
        const ListTile(
          title: Text("Telefon numaranı ekle",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20)),
        ),
        const ListTile(
          title: Text("SMS bildirimleri almak için",
              style: TextStyle(color: Colors.grey)),
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    backgroundColor: Colors.white),
                onPressed: () {},
                child:
                    const Text("Ekle", style: TextStyle(color: Colors.black))),
          ),
        )
      ]),
    );
  }
}
