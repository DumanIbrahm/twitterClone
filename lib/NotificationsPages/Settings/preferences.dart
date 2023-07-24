import 'package:flutter/material.dart';
import 'package:twitter_clone/NotificationsPages/Settings/SettingsDetails/open_notifications.dart';

class Preferences extends StatefulWidget {
  const Preferences({super.key});

  @override
  State<Preferences> createState() => _PreferencesState();
}

class _PreferencesState extends State<Preferences> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const ListTile(
            title: Text(
              "Tercihler",
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
           ListTile(
            title: Row(
              children: const [
                Text(
                  "Bildirim türüne göre tercihlerini seç.",
                  style: TextStyle(color: Colors.white,fontSize: 13),
                ),
                Text("  Daha fazla bilgi al", style: TextStyle(color: Colors.blue, fontSize: 13))
              ],
            ),
          ),
          ListTile(
            title: const Text("Anlık bildirimler",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            trailing: IconButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OpenNotifications()),
                        (route) => true,
                      );
                },
                icon: const Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 15,
                  color: Colors.white,
                )),
          ),
          ListTile(
            title: const Text("SMS bildirimleri",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            trailing: IconButton(
                onPressed: () {
                  //  Navigator.pushAndRemoveUntil(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) => const SMSBildirim()),
                  //       (route) => true,
                  //     );
                },
                icon: const Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 15,
                  color: Colors.white,
                )),
          ),
          ListTile(
            title: const Text("E-posta bildirimleri",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            trailing: IconButton(
                onPressed: () {
                  //  Navigator.pushAndRemoveUntil(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) => const EPostaBildirim()),
                  //       (route) => true,
                  //     );
                },
                icon: const Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 15,
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }
}