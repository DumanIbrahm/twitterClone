import 'package:flutter/material.dart';
import 'package:twitter_clone/constant.dart';

class TrendSettings extends StatefulWidget {
  const TrendSettings({super.key});

  @override
  State<StatefulWidget> createState() => _trendSettings();
}

// ignore: camel_case_types
class _trendSettings extends State<TrendSettings> {
  bool myBool = true;
  bool myBool1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.primaryColor,
      appBar: AppBar(
        title: ListTile(
          title: const Text(
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
            title: const Padding(
              padding: EdgeInsets.only(
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
              title: const Text(
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
            title: const Padding(
              padding: EdgeInsets.only(
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
              title: const Text(
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
