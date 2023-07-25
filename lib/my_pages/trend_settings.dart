import 'package:flutter/material.dart';
import 'package:twitter_clone/constant.dart';
import 'package:twitter_clone/my_pages/trend_page.dart';

class TrendSettings extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _trendSettings();
}

class _trendSettings extends State<TrendSettings> {
  bool myBool = true;
  bool myBool1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.primaryColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => TrendPage()),
                (route) => false);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Pallete.textColor,
          ),
        ),
        title: ListTile(
          title: Text(
            "Keşfetme Ayarları",
            style: TextStyle(
              color: Pallete.textColor,
            ),
          ),
          subtitle: Text(
            "abc@gamail.com",
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(
                left: 15,
                bottom: 10,
              ),
              child: Text(
                "Konum",
                style: TextStyle(
                  color: Pallete.textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            subtitle: ListTile(
              title: Text(
                "Bu konumdaki içeriği göster",
                style: TextStyle(
                  color: Pallete.textColor,
                ),
              ),
              subtitle: Text(
                "Bu özellik etkin olduğunda, şu anda etrafında olan bitenleri görürsün.",
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
              trailing: Switch(
                  value: myBool,
                  onChanged: ((value) {
                    setState(() {
                      myBool = !myBool;
                    });
                  })),
            ),
          ),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(
                left: 15,
                bottom: 10,
              ),
              child: Text(
                "Kişiselleştirme",
                style: TextStyle(
                  color: Pallete.textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            subtitle: ListTile(
              title: Text(
                "Gündemde ilgini çekebilecekler",
                style: TextStyle(
                  color: Pallete.textColor,
                ),
              ),
              subtitle: Text(
                "Gündemleri konumuna ve kimi takip ettiğine göre kişiselleştiribilirsin.",
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
              trailing: Switch(
                value: myBool1,
                onChanged: ((value) {
                  setState(() {
                    myBool1 = !myBool1;
                  });
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
