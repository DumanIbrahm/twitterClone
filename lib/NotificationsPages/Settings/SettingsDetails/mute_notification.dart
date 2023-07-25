import 'package:flutter/material.dart';
import 'package:twitter_clone/constant.dart';

class MuteNotification extends StatefulWidget {
  const MuteNotification({super.key});

  @override
  State<MuteNotification> createState() => _MuteNotificationState();
}

class _MuteNotificationState extends State<MuteNotification> {
  bool _isSwitched = false;
  bool _isSwitched1 = false;
  bool _isSwitched2 = false;
  bool _isSwitched3 = false;
  bool _isSwitched4 = false;
  bool _isSwitched5 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const ListTile(
          title:  Text("Sessize alınan bildirimler", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          subtitle: Text("@ibrahimdmn",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
        ),
        actions: [TextButton(onPressed: (){
          Navigator.pop(context);
          Navigator.pop(context);
          Navigator.pop(context);
        }, child: const Text("Bitti",style: TextStyle(color: Colors.white,),))]),
        body: Column(
          children: [
           const ListTile(title: Text("Şu kişilerden gelen bildirimleri sessize al:",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 16), textAlign: TextAlign.left,)),
          ListTile(
              title:  Text("Takip etmediğin kişiler", style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              trailing: Switch(
                activeColor: Pallete.onSwitchColor,
                value: _isSwitched,
                onChanged: (value){ 
                  setState(() {
                    _isSwitched = value;
                  });
                }),
            ),
          ListTile(
              title:  Text("Seni takip etmeyen kişiler", style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              trailing: Switch(
                activeColor: Pallete.onSwitchColor,
                value: _isSwitched1,
                onChanged: (value){ 
                  setState(() {
                    _isSwitched1 = value;
                  });
                }),
            ),
          ListTile(
              title:  Text("Hesabı yeni olan kişiler", style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              trailing: Switch(
                activeColor: Pallete.onSwitchColor,
                value: _isSwitched2,
                onChanged: (value){ 
                  setState(() {
                    _isSwitched2 = value;
                  });
                }),
            ),
          ListTile(
              title:  Text("Varsayılan profil fotoğrafını kullanan kişiler", style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              trailing: Switch(
                activeColor: Pallete.onSwitchColor,
                value: _isSwitched3,
                onChanged: (value){ 
                  setState(() {
                    _isSwitched3 = value;
                  });
                }),
            ),
          ListTile(
              title:  Text("E-posta adresini doğrulamamış kişiler", style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              trailing: Switch(
                activeColor: Pallete.onSwitchColor,
                value: _isSwitched4,
                onChanged: (value){ 
                  setState(() {
                    _isSwitched4 = value;
                  });
                }),
            ),
          ListTile(
              title:  Text("Telefon numarası doğrulanmamış kişiler", style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              trailing: Switch(
                activeColor: Pallete.onSwitchColor,
                value: _isSwitched5,
                onChanged: (value){ 
                  setState(() {
                    _isSwitched5 = value;
                  });
                }),
            ),
          const ListTile(title: Text("Bu filtreler takip ettiğin kişilerden gelen bildirimleri etkilemez.", style: TextStyle(color: Colors.grey)),),
          const ListTile(title: Text("Daha fazla bilgi al", style: TextStyle(color: Colors.blue))
        )]),
    );
  }
  
}
