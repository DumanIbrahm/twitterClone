import 'package:flutter/material.dart';

class MessageToPerson extends StatefulWidget {
  //const MessageToPerson({Key? key}) : super(key: key);

  String item = "";
  dynamic index;

  MessageToPerson({Key? key, required this.item, required this.index})
      : super(key: key);

  @override
  State<MessageToPerson> createState() => _MessageToPersonState();
}

class _MessageToPersonState extends State<MessageToPerson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(
            //Icons.arrow_back,
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('${widget.item}', style: TextStyle(color: Colors.white),),
        actions: [
          Icon(Icons.info, color: Colors.white),
        ],
      ),
      body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
        children: [
    //Icon(Icons.photo),
        TextField(
          decoration: InputDecoration(
            icon: Icon(Icons.photo, color: Colors.white,),
            hintText: 'Mesajınızı girin...',
            hintStyle: TextStyle(color: Colors.white),
            fillColor: Colors.white,
            border: OutlineInputBorder(),
          ),
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(height: 20),
        ElevatedButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.black)),
          onPressed: () {
            // Mesaj gönderildiğinde burada yapılacak işlemler
            _sendMessage('Örnek mesaj'); // Örnek mesaj gönderiyoruz
          },
          child: Text('Mesaj Gönder',style: TextStyle(color: Colors.blue),),
        ),
        ],


      ),
    );
  }
  
  
    void _sendMessage(String message) {
    // Burada mesaj gönderme işlemlerini yapabilirsiniz.
    // Örneğin, mesajı bir API'ye göndermek, veritabanına kaydetmek vb.
    print('Gönderilen mesaj: $message');
  }
}
