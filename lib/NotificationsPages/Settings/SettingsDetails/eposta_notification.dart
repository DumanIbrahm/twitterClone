import 'package:flutter/material.dart';
import 'package:twitter_clone/NotificationsPages/Settings/SettingsDetails/populer_tweets.dart';
import 'package:twitter_clone/constant.dart';

class EPostaBildirim extends StatefulWidget {
  const EPostaBildirim({super.key});

  @override
  State<EPostaBildirim> createState() => _EPostaBildirimState();
}

class _EPostaBildirimState extends State<EPostaBildirim> {
  bool _isSwitch = false;
  bool _isSwitch1 = false;
  bool _isSwitch2 = false;
  bool _isSwitch3 = false;
  bool _isSwitch4 = false;
  bool _isSwitch5 = false;
  bool _isSwitch6 = false;
  bool _isSwitch7 = false;
  bool _isSwitch8 = false;
  bool _isSwitch9 = false;
  bool _isSwitch10 = false;
  bool _isSwitch11 = false;
  bool _isSwitch12 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const ListTile(
            title: Text(
              "E-Posta Bildirimleri",
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
      body: SingleChildScrollView(
        child: Column(children: [
          ListTile(
            title: const Text(
              "E-postta bildirimleri",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            trailing: Switch(
                activeColor: Pallete.onSwitchColor,
                value: _isSwitch,
                onChanged: (value) {
                  setState(() {
                    _isSwitch = value;
                  });
                }),
          ),
          const ListTile(
            title: Text(
                "Twitter'da olmadığın zamanlarda olup bitenleri öğrenmek için e-posta al. Bu özelliği istediğin zaman kapatabilirsin.",
                style: TextStyle(color: Colors.grey, fontSize: 14)),
          ),
          const Divider(
            color: Colors.grey,
          ),
          const ListTile(
              title: Text("Sen ve Tweetlerinle ilgili",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18))),
          ListTile(
            title: const Text("Yeni bildirimler",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            trailing: Switch(
                activeColor: Pallete.onSwitchColor,
                value: _isSwitch1,
                onChanged: (value) {
                  setState(() {
                    _isSwitch1 = value;
                  });
                }),
          ),
          ListTile(
            title: const Text("Direkt Mesajlar",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            trailing: Switch(
                activeColor: Pallete.onSwitchColor,
                value: _isSwitch2,
                onChanged: (value) {
                  setState(() {
                    _isSwitch2 = value;
                  });
                }),
          ),
          ListTile(
            title: const Text("Sana e-posta ile gönderilern Tweetler",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            trailing: Switch(
                activeColor: Pallete.onSwitchColor,
                value: _isSwitch3,
                onChanged: (value) {
                  setState(() {
                    _isSwitch3 = value;
                  });
                }),
          ),
          const Divider(
            color: Colors.grey,
          ),
          const ListTile(
            title: Text("Senin ağından",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18)),
          ),
          ListTile(
              title: Expanded(
                child: Row(
                  children: const [
                    Text("Popüler Tweetler ve Hikayeler",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15)),
                    //Text("  Periyodik olarak", style: TextStyle(color: Colors.grey))
                  ],
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PopularTweets()),
                    (route) => true,
                  );
                },
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                iconSize: 15,
              )),
          ListTile(
            title: const Text("Tweetlerinin performansı hakkında güncellemeler",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            trailing: Switch(
                activeColor: Pallete.onSwitchColor,
                value: _isSwitch4,
                onChanged: (value) {
                  setState(() {
                    _isSwitch4 = value;
                  });
                }),
          ),
          const Divider(
            color: Colors.grey,
          ),
          const ListTile(
            title: Text("Twitter'dan",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18)),
          ),
          ListTile(
            title: const Text(
                "Twitter ürün ve özelliklerindeki güncellemelerle ilgili haberler",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            trailing: Switch(
                activeColor: Pallete.onSwitchColor,
                value: _isSwitch5,
                onChanged: (value) {
                  setState(() {
                    _isSwitch5 = value;
                  });
                }),
          ),
          ListTile(
            title: const Text(
                "Twitter'dan daha iyi bir şekilde yararlanmakla ilgili ipuçları",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            trailing: Switch(
                activeColor: Pallete.onSwitchColor,
                value: _isSwitch6,
                onChanged: (value) {
                  setState(() {
                    _isSwitch6 = value;
                  });
                }),
          ),
          ListTile(
            title: const Text("Twitter'a son girdiğinden bu yana kaçırdıkların",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            trailing: Switch(
                activeColor: Pallete.onSwitchColor,
                value: _isSwitch7,
                onChanged: (value) {
                  setState(() {
                    _isSwitch7 = value;
                  });
                }),
          ),
          ListTile(
            title: const Text(
                "İş ortağı ürünleri ve üçüncü parti hizmetlerinde Twitter ile ilgili haberler",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            trailing: Switch(
                activeColor: Pallete.onSwitchColor,
                value: _isSwitch8,
                onChanged: (value) {
                  setState(() {
                    _isSwitch8 = value;
                  });
                }),
          ),
          ListTile(
            title: const Text("Twitter araştırma anketlerine katılım",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            trailing: Switch(
                activeColor: Pallete.onSwitchColor,
                value: _isSwitch9,
                onChanged: (value) {
                  setState(() {
                    _isSwitch9 = value;
                  });
                }),
          ),
          ListTile(
            title: const Text("Önerilen hesaplarla ilgili tavsiyeler",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            trailing: Switch(
                activeColor: Pallete.onSwitchColor,
                value: _isSwitch10,
                onChanged: (value) {
                  setState(() {
                    _isSwitch10 = value;
                  });
                }),
          ),
          ListTile(
            title: const Text("Takip ettiğin son hesaplara göre öneriler",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            trailing: Switch(
                activeColor: Pallete.onSwitchColor,
                value: _isSwitch11,
                onChanged: (value) {
                  setState(() {
                    _isSwitch11 = value;
                  });
                }),
          ),
          ListTile(
            title: const Text("Twitter ticari ürünleri hakkında ipuçları",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            trailing: Switch(
                activeColor: Pallete.onSwitchColor,
                value: _isSwitch12,
                onChanged: (value) {
                  setState(() {
                    _isSwitch12 = value;
                  });
                }),
          ),
        ]),
      ),
    );
  }
}
