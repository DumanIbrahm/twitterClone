import 'package:flutter/material.dart';
import 'package:twitter_clone/NotificationsPages/Settings/SettingsDetails/mute_notification.dart';

class FiltelerPage extends StatefulWidget {
  const FiltelerPage({super.key});

  @override
  State<FiltelerPage> createState() => _FiltelerPageState();
}

class _FiltelerPageState extends State<FiltelerPage> {
  bool _isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const ListTile(
          title:  Text("Filtreler", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          subtitle: Text("@ibrahimdmn",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
        ),
        actions: [TextButton(onPressed: (){
          Navigator.pop(context);
          Navigator.pop(context);
        }, child: const Text("Bitti",style: TextStyle(color: Colors.white,),))]),
        body: Column(
          children: [
            const ListTile(title: Text("Görmek istediğin ve istemediğin bildirimleri seç",style: TextStyle(color: Colors.white))),
            ListTile(
              title: const Text("Kalite filtresi", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              trailing: Switch(
                activeColor: Colors.green,
                value: _isSwitched,
                onChanged: (value){
                  setState(() {
                    _isSwitched = value;
                  });
                }),
            ),
            const ListTile(title: Text("Düşük kaliteli içerikleri bildirimlerinde filtrele. Bu durum, takip ettiğin kişilerden veya yakın zamanda etkileşime geçtiğin hesaplardan gelen bildirimleri etkilemez.", style: TextStyle(color: Colors.white))),
            const ListTile(title: Text("Daha fazla bilgi al", style: TextStyle(color: Colors.blue))),
            ListTile(
              title: const Text("Sessize alınan bildirimler", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              trailing: IconButton(onPressed: (){
                Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MuteNotification()),
                        (route) => true,
                      );
              }, icon: const Icon(Icons.arrow_forward_ios, color: Colors.white,)),
            )
          ],
        ),
    );
  }
}