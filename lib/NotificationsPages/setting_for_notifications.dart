import 'package:flutter/material.dart';

class SettingsForNotiPage extends StatefulWidget {
  const SettingsForNotiPage({super.key});

  @override
  State<SettingsForNotiPage> createState() => _SettingsForNotiPageState();
}

class _SettingsForNotiPageState extends State<SettingsForNotiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const ListTile(
          title:  Text("Bildirimler", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          subtitle: Text("@ibrahimdmn",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
        ),
        actions: [TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: const Text("Bitti",style: TextStyle(color: Colors.white,),))]),
        
        body: ListView(
          children:  [
            const Text("Etkinliklerin, ilgi alanların ve önerilerin hakkında aldığın bildirim türlerini seç.\n\n",style: TextStyle(color: Colors.white)),
            ListTile(
              leading: const Icon(Icons.filter, color: Colors.white,),
              title: const Text("Filtreler",style: TextStyle(color: Colors.white)),
              subtitle: const Text("Görmek istediğin ve istemediğin bildirimleri seç.",style: TextStyle(color: Colors.white,)),
              trailing: IconButton(onPressed: (){
                // Navigator.pushAndRemoveUntil(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => const FiltelerPage()),
                //         (route) => true,
                //       );
              }, icon: const Icon(Icons.arrow_forward_ios, color: Colors.white,)),
            ),
            ListTile(
              leading: const Icon(Icons.wysiwyg_outlined, color: Colors.white,),
              title: const Text("Tercihler",style: TextStyle(color: Colors.white)),
              subtitle: const Text("Bildirim türüne göre tercihlerini seç.",style: TextStyle(color: Colors.white)),
              trailing: IconButton(onPressed: (){
                // Navigator.pushAndRemoveUntil(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => const Tercihler()),
                //         (route) => true,
                //       );
              }, icon: const Icon(Icons.arrow_forward_ios, color: Colors.white,)),
            )
          ],
        ),
        
    );
  }
}